import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/common/widget/text_input.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_event.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_event.dart';
import 'package:rave_flock/presentation/pages/friends_page/widgets/notification_button_widget.dart';
import 'package:rave_flock/presentation/screens/error_screen/error_screen.dart';
import '../../../services/auth_service.dart';
import '../../bloc/friends_data_bloc/friends_data_bloc.dart';
import '../../bloc/friends_data_bloc/friends_data_state.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: GetIt.I<FriendRequestsBloc>(),
      child: BlocProvider.value(value: GetIt.I<FriendsDataBloc>(), child: const _FriendsPageView()),
    );
  }
}

class _FriendsPageView extends StatefulWidget {
  const _FriendsPageView({super.key});

  @override
  State<_FriendsPageView> createState() => _FriendsPageViewState();
}

class _FriendsPageViewState extends State<_FriendsPageView> {
  final _titleController = TextEditingController();

  @override
  void initState() {
    BlocProvider.of<FriendsDataBloc>(context).add(FriendsDataEvent.initialize(AuthService.getUserId() ?? ''));
    BlocProvider.of<FriendRequestsBloc>(context).add(FriendRequestsEvent.initialize(AuthService.getUserId() ?? ''));

    super.initState();
  }

  @override
  void dispose() {
    titleDebounceTimer?.cancel();
    _titleController.dispose();

    super.dispose();
  }

  bool _titleValid = true;

  Timer? titleDebounceTimer;

  void _onChangeTitle(String value) {
    if (titleDebounceTimer?.isActive ?? false) {
      titleDebounceTimer?.cancel();
    }
    titleDebounceTimer = Timer(
      const Duration(milliseconds: 500),
      () {
        BlocProvider.of<FriendsDataBloc>(context).add(FriendsDataEvent.search(AuthService.getUserId() ?? '', value));
      },
    );
  }

  Future<void> _refresh() async {
    Future block = GetIt.I<FriendsDataBloc>().stream.first;
    GetIt.I<FriendsDataBloc>().add(FriendsDataEvent.initialize(AuthService.getUserId() ?? ''));
    GetIt.I<FriendRequestsBloc>().add(FriendRequestsEvent.initialize(AuthService.getUserId() ?? ''));

    await block;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(gradient: RadialGradient(radius: 1.2.r, colors: [const Color(0xFF5B1828), Colors.black])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: RefreshIndicator(
            color: Colors.white,
            backgroundColor: const Color(0xFF5B1828),
            triggerMode: RefreshIndicatorTriggerMode.onEdge,
            onRefresh: () async {
              await _refresh();
            },
            child: Center(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 20.h,
                    backgroundColor: Colors.transparent,
                    flexibleSpace: FlexibleSpaceBar(
                        background: Container(
                          color: Colors.transparent,
                          child: Center(child: Text(context.S.friends)),
                        ),
                        centerTitle: true),
                  ),
                  SliverToBoxAdapter(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40).w,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('...'),
                        NotificationButtonWidget(),
                      ],
                    ),
                  )),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 20).r,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextInput(
                            label: context.S.search,
                            valid: _titleValid,
                            errorText: context.S.name_is_too_short,
                            controller: _titleController,
                            readOnly: false,
                            maxLine: 1,
                            onChanged: _onChangeTitle,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.pushNamed('addNewFriendScreen');
                            },
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BlocBuilder<FriendsDataBloc, FriendsDataState>(
                    builder: (context, state) {
                      return state.when(init: () {
                        return const SliverToBoxAdapter(child: FriendsRollLoadingWidget());
                      }, loaded: (friends) {
                        return FriendsRollWidget(friends: friends);
                      }, error: (e) {
                        return ErrorScreen(error: e); // TODO: navigate
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FriendsRollWidget extends StatefulWidget {
  const FriendsRollWidget({
    super.key,
    required this.friends,
  });

  final List<UserModel> friends;

  @override
  State<FriendsRollWidget> createState() => FriendsRollWidgetState();
}

class FriendsRollWidgetState extends State<FriendsRollWidget> {
  int _index = 0;

  @override
  void initState() {
    _index = 0;
    heightContainer = 370.h;

    super.initState();
  }

  late final heightContainer;

  @override
  Widget build(BuildContext context) {
    if (widget.friends.isNotEmpty) {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return _buildFriendPanel(context, index);
          },
          childCount: widget.friends.length,
        ),
        // separatorBuilder: (context, index) => const SizedBox(height: 60.0),
        // itemCount: widget.friends.length,
        // itemBuilder: (context, index) {
        // return _buildFriendPanel(context, index);
        // },
      );
      // return Padding(
      //   padding: const EdgeInsets.only(top: 40.0),
      //   child: Column(
      //     children: [
      //       SizedBox(
      //         height: heightContainer,
      //         child: PageView.builder(
      //           controller: PageController(initialPage: 0, viewportFraction: 0.7.r),
      //           onPageChanged: (val) {
      //             setState(() {
      //               _index = val;
      //             });
      //           },
      //           scrollDirection: Axis.horizontal,
      //           itemCount: widget.friends.length,
      //           itemBuilder: (context, index) {
      //             return _buildFriendPanel(context, index);
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildFriendPanel(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        context.goNamed('friendScreen', pathParameters: {
          'friendId': widget.friends[index].userId,
        });
      },
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        margin: const EdgeInsets.symmetric(horizontal: 40),
        // decoration: BoxDecoration(
        //     gradient: const LinearGradient(begin: Alignment.center, end: Alignment.bottomRight, stops: [
        //       0.0,
        //       1
        //     ], colors: [
        //       Color.fromARGB(255, 161, 37, 66),
        //       Color.fromARGB(255, 50, 9, 18),
        //     ]),
        //     borderRadius: BorderRadius.circular(30).r),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 212, 181, 184),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.friends[index].avatarUrl != null
                  ? CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(widget.friends[index].avatarUrl!),
                      radius: 40,
                    )
                  : SvgPicture.asset(
                      'assets/images/star_flock.svg',
                      width: 100,
                    ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    child: Text(
                      '${widget.friends[index].username}',
                      style: TextStyle(color: Color.fromARGB(255, 212, 181, 184), fontSize: 34.sp),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  // if (widget.friends[index].profileDescription != null)
                  //   SizedBox(
                  //     width: 100,
                  //     child: Text(
                  //       '${widget.friends[index].profileDescription}',
                  //       maxLines: 2,
                  //       overflow: TextOverflow.ellipsis,
                  //       style: const TextStyle(
                  //         color: Color.fromARGB(255, 164, 143, 145),
                  //       ),
                  //     ),
                  //   ),
                  if (widget.friends[index].location != null)
                    Text(
                      widget.friends[index].location.toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 212, 181, 184),
                      ),
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FriendsRollLoadingWidget extends StatefulWidget {
  const FriendsRollLoadingWidget({
    super.key,
  });

  @override
  State<FriendsRollLoadingWidget> createState() => FriendsRollLoadingWidgetState();
}

class FriendsRollLoadingWidgetState extends State<FriendsRollLoadingWidget> {
  int _index = 0;

  @override
  void initState() {
    _index = 0;
    heightContainer = 370.h;

    super.initState();
  }

  late final heightContainer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          SizedBox(
            height: heightContainer,
            child: PageView.builder(
              controller: PageController(initialPage: 0, viewportFraction: 0.7.r),
              onPageChanged: (val) {
                setState(() {
                  _index = val;
                });
              },
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return _buildFriendPanel(context, index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Stack _buildFriendPanel(BuildContext context, int index) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1],
                    colors: [Colors.grey, Colors.white24]),
                borderRadius: BorderRadius.circular(30).r),
            child: AnimatedContainer(
              width: 250.r,
              height: index == _index ? heightContainer : heightContainer - 50.r,
              curve: Curves.easeInOutQuad,
              duration: const Duration(seconds: 1),
              padding: const EdgeInsets.all(20).r,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: AnimatedContainer(
                          curve: Curves.easeInQuad,
                          duration: const Duration(milliseconds: 900),
                          height: index == _index ? 150.w : 120.w,
                          width: index == _index ? 150.w : 120.w,
                          decoration: BoxDecoration(
                              borderRadius: index == _index
                                  ? const BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))
                                      .r
                                  : BorderRadius.circular(70).r),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
