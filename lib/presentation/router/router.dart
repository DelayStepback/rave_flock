import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/presentation/pages/friends_page/widgets/add_new_friend_widget.dart';
import 'package:rave_flock/presentation/pages/routing_page/routing_page.dart';
import 'package:rave_flock/presentation/pages/welcome/welcome_page.dart';
import 'package:rave_flock/presentation/pages/welcome/set_username_screen.dart';
import 'package:rave_flock/presentation/pages/basket_page/basket_page.dart';
import 'package:rave_flock/presentation/pages/friends_page/friends_page.dart';
import 'package:rave_flock/presentation/pages/home_page/home_page.dart';
import 'package:rave_flock/presentation/pages/meet_page/meet_page.dart';
import 'package:rave_flock/presentation/pages/profile_page/profile_page.dart';
import 'package:rave_flock/presentation/pages/splash_page/splash_page.dart';
import 'package:rave_flock/presentation/pages/home_page/widgets/create_new_meet_screen.dart';
import 'package:rave_flock/presentation/screens/error_screen/error_screen.dart';
import 'package:rave_flock/presentation/screens/friend_requests_screen/friend_requests_screen.dart';
import 'package:rave_flock/presentation/screens/friend_screen/friend_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

CustomTransitionPage transitionSlideWrapperForPage(Widget page, GoRouterState state) {
  return CustomTransitionPage(
    child: page,
    key: state.pageKey,
    transitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    ),
  );
}

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: "/setUsername",
      builder: (context, state) => const SetUsernameScreen(),
    ),
    GoRoute(
      path: '/errorScreen',
      builder: (context, state) {
        Map<String, String> args = state.extra as Map<String, String>;
        return ErrorScreen(
          error: args['error'] ?? '',
        );
      },
    ),
    GoRoute(
      name: 'routingPage',
      path: "/routingPage",
      pageBuilder: (context, state) => transitionSlideWrapperForPage(const RoutingPage(), state),
      routes: [
        GoRoute(
          name: 'homePage',
          path: "homePage",
          pageBuilder: (context, state) => transitionSlideWrapperForPage(const HomePage(), state),
          routes: [
            GoRoute(
                name: 'createNewMeetScreen',
                path: "createNewMeetScreen",
                pageBuilder: (context, state) => transitionSlideWrapperForPage(
                    CreateNewMeetScreen(
                      meetModel: state.extra == null ? null : state.extra! as MeetModel,
                    ),
                    state)),
            GoRoute(
              name: 'meetPage',
              path: "meetPage/:meetId",
              pageBuilder: (context, state) => transitionSlideWrapperForPage(
                  MeetPage(meetId: int.tryParse(state.pathParameters['meetId']!) ?? 0), state),
              routes: [
                GoRoute(
                  name: 'basketPage',
                  path: "basketPage/:meetIdBasket",
                  pageBuilder: (context, state) => transitionSlideWrapperForPage(
                      BasketPage(
                          meetId: int.tryParse(state.pathParameters['meetIdBasket']!) ?? 0 // TODO 0 не есть хорошо
                          ),
                      state),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: "friendsPage",
          name: "friendsPage",
          pageBuilder: (context, state) => transitionSlideWrapperForPage(const FriendsPage(), state),
          routes: [
            GoRoute(
              name: "addNewFriendScreen",
              path: "addNewFriendScreen",
              pageBuilder: (context, state) => transitionSlideWrapperForPage(const AddNewFriendScreen(), state),
            ),
            GoRoute(
              name: "friendScreen",
              path: "friendScreen/:friendId",
              pageBuilder: (context, state) => transitionSlideWrapperForPage(
                  FriendScreen(friendId: state.pathParameters['friendId'] ?? '' // TODO: '' - не есть хорошо
                      ),
                  state),
            ),
          ],
        ),
        GoRoute(
          path: "profilePage",
          name: "profilePage",
          pageBuilder: (context, state) => transitionSlideWrapperForPage(const ProfilePage(), state),
        ),
      ],
    ),
    GoRoute(
      name: "friendRequestsScreen",
      path: "/friendRequestsScreen",
      pageBuilder: (context, state) => transitionSlideWrapperForPage(const FriendRequestsScreen(), state),
    ),
  ],
);
