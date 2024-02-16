import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
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
import 'widgets/add_new_friend_widget.dart';

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
                  leading: GestureDetector(onTap: () => context.pop(), child: const Icon(Icons.arrow_back_ios)),
                  // title: Text('R A V E  F L O C K'),
                  expandedHeight: 20.h,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        color: Colors.transparent,
                        child: const Center(child: Text('FRIENDS')),
                      ),
                      centerTitle: true),
                ),
                SliverToBoxAdapter(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40).w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('A MAN IS KNOWN BY HIS FRIENDS'),
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
                          label: 'Поиск',
                          valid: _titleValid,
                          errorText: 'Слишком короткое название',
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
                      return SliverToBoxAdapter(child: FriendsRollLoadingWidget());
                    }, loaded: (friends) {
                      return SliverToBoxAdapter(child: FriendsRollWidget(friends: friends));
                    }, error: (e) {
                      return ErrorScreen(error: e); // TODO: navigate
                    });
                  },
                ),
              ],
            )),
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
    if (widget.friends.length > 0) {
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
                itemCount: widget.friends.length,
                itemBuilder: (context, index) {
                  return _buildFriendPanel(context, index);
                },
              ),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Stack _buildFriendPanel(BuildContext context, int index) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              context.goNamed('friendScreen', pathParameters: {
                'friendId': widget.friends[index].userId,
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.center, end: Alignment.bottomRight, stops: [
                    0.0,
                    1
                  ], colors: [
                    Color(0xFFFBD6AA),
                    const Color(0xFFFFCCCC),
                  ]),
                  borderRadius: BorderRadius.circular(30).r),
              child: AnimatedContainer(
                width: 250.r,
                height: index == _index ? heightContainer : heightContainer - 50.r,
                curve: Curves.easeInOutQuad,
                duration: const Duration(seconds: 1),
                padding: EdgeInsets.all(20).r,
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
                            child: Center(
                              child: widget.friends[index].avatarUrl != null
                                  ? CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: NetworkImage(widget.friends[index].avatarUrl!),
                                      radius: 150.r,
                                    )
                                  : SvgPicture.asset(
                                      'assets/images/star_flock.svg',
                                      width: 160.w,
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          height: 40.h,
                          child: Text(
                            '${widget.friends[index].username}',
                            style: TextStyle(color: Color(0xFF4B1017), fontSize: 34.sp),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        if (widget.friends[index].profileDescription != null)
                          SizedBox(
                            height: 60.h,
                            child: Text(
                              '${widget.friends[index].profileDescription}',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xFF4B1017),
                              ),
                            ),
                          ),
                      ],
                    ),
                    if (widget.friends[index].location != null)
                      Text(
                        widget.friends[index].location.toString(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xFF4B1017),
                        ),
                      )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
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
                gradient: LinearGradient(
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
              padding: EdgeInsets.all(20).r,
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
