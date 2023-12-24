import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/widget/text_input.dart';
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
      decoration: BoxDecoration(gradient: RadialGradient(radius: 1.2.r, colors: [Color(0xFF5B1828), Colors.black])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: RefreshIndicator(
            color: Colors.white,
            backgroundColor: Color(0xFF5B1828),
            triggerMode: RefreshIndicatorTriggerMode.onEdge,
            onRefresh: () async {
              await _refresh();
            },
            child: Center(
                child: CustomScrollView(
              slivers: [
                   SliverAppBar(
                  leading: GestureDetector(onTap: () => context.pop(), child: Icon(Icons.arrow_back_ios)),
                  // title: Text('R A V E  F L O C K'),
                  expandedHeight: 20.h,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      color: Colors.transparent,
                      child: Center(child: Text('FRIENDS')),
                    ),
                    centerTitle: true
                  ),
                ),
                SliverToBoxAdapter(child: NotificationButtonWidget()),
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
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context, builder: (context) => AddNewFriendWidget());
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
                      return SliverToBoxAdapter(child: const Text('LOADING'));
                    }, loaded: (friends) {
                      return SliverList.builder(
                        // separatorBuilder: (_, index) => SizedBox(
                        //   height: 10,
                        // ),
                        // padding: EdgeInsets.only(left: 20, right: 20),
                        itemCount: friends.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              context.goNamed('friendScreen', pathParameters: {
                                'friendId': friends[index].userId,
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Container(
                                padding: const EdgeInsets.all(30).r,
                                decoration: const BoxDecoration(
                                    color: Color(0xFFFBD6AA), borderRadius: BorderRadius.all(Radius.circular(20))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Имя пользователя: ${friends[index].username}',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        Text(
                                          'Местоположение: ${friends[index].location ?? 'скрыто'}',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        Text(
                                          'Кличка: ${friends[index].nickname ?? 'не задана'}',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    friends[index].avatarUrl == null
                                        ? SvgPicture.asset(
                        'assets/images/star_flock.svg',width: 120.w,
                      )
                                        : CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                            minRadius: 60.r,
                                            backgroundImage: NetworkImage(friends[index].avatarUrl!),
                                          )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
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
    // return Container(
    //   decoration: BoxDecoration(gradient: RadialGradient(radius: 1.2.r, colors: [Colors.red, Colors.black])),
    //   child: Scaffold(
    //     backgroundColor: Colors.transparent,
    //     body: RefreshIndicator(
    //       color: Colors.white,
    //       backgroundColor: Color(0xFF5B1828),
    //       triggerMode: RefreshIndicatorTriggerMode.onEdge,
    //       onRefresh: () async {
    //         await _refresh();
    //       },
    //       child: Center(
    //           child: Column(
    //         children: [
    //           Row(
    //             children: [
    //               IconButton(
    //                   onPressed: () {
    //                     context.read<FriendsDataBloc>().add(FriendsDataEvent.initialize(userId!));
    //                   },
    //                   icon: const Icon(Icons.refresh)),
    //               NotificationButtonWidget(),
    //             ],
    //           ),
    //           ElevatedButton(
    //             onPressed: () {
    //               showModalBottomSheet(context: context, builder: (context) => AddNewFriendWidget());
    //             },
    //             child: const Icon(Icons.add),
    //           ),
    //           BlocBuilder<FriendsDataBloc, FriendsDataState>(
    //             builder: (context, state) {
    //               return state.when(init: () {
    //                 context.read<FriendsDataBloc>().add(FriendsDataEvent.initialize(AuthService.getUserId() ?? ''));
    //                 return const Text('LOADING');
    //               }, loaded: (friends) {
    //                 return Expanded(
    //                   child: ListView.separated(
    //                     separatorBuilder: (_, index) => SizedBox(
    //                       height: 10,
    //                     ),
    //                     padding: EdgeInsets.only(left: 20, right: 20),
    //                     itemCount: friends.length,
    //                     itemBuilder: (context, index) {
    //                       return GestureDetector(
    //                         onTap: () {
    //                           context.goNamed('friendScreen', pathParameters: {
    //                             'friendId': friends[index].userId,
    //                           });
    //                         },
    //                         child: Container(
    //                           padding: const EdgeInsets.all(20),
    //                           decoration: const BoxDecoration(
    //                               color: Colors.indigo, borderRadius: BorderRadius.all(Radius.circular(20))),
    //                           child: Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               Column(
    //                                 mainAxisAlignment: MainAxisAlignment.start,
    //                                 crossAxisAlignment: CrossAxisAlignment.start,
    //                                 children: [
    //                                   Text(
    //                                     'Имя пользователя: ${friends[index].username}',
    //                                     style: TextStyle(color: Colors.white),
    //                                   ),
    //                                   Text(
    //                                     'Местоположение: ${friends[index].location ?? 'скрыто'}',
    //                                     style: TextStyle(color: Colors.white),
    //                                   ),
    //                                   Text(
    //                                     'Кличка: ${friends[index].nickname ?? 'не задана'}',
    //                                     style: TextStyle(color: Colors.white),
    //                                   ),
    //                                 ],
    //                               ),
    //                               friends[index].avatarUrl == null
    //                                   ? CircleAvatar(
    //                                       minRadius: 40,
    //                                       backgroundColor: Colors.blue,
    //                                     )
    //                                   : CircleAvatar(
    //                                       minRadius: 40,
    //                                       backgroundColor: Colors.red,
    //                                       backgroundImage: NetworkImage(friends[index].avatarUrl!),
    //                                     )
    //                             ],
    //                           ),
    //                         ),
    //                       );
    //                     },
    //                   ),
    //                 );
    //               }, error: (e) {
    //                 return ErrorScreen(error: e);
    //               });
    //             },
    //           ),
    //         ],
    //       )),
    //     ),
    //   ),
    // );
  }
}
