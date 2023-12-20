import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
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
      builder: (context, state) => const RoutingPage(),
      routes: [

        GoRoute(
          name: 'homePage',
          path: "homePage",
          builder: (context, state) => const HomePage(),
          routes: [
            GoRoute(
              name: 'createNewMeetScreen',
              path: "createNewMeetScreen",
              //TODO: для update meet
              builder: (context, state) => CreateNewMeetScreen(
                meetModel:
                    state.extra == null ? null : state.extra! as MeetModel,
              ),
            ),
            GoRoute(
              name: 'meetPage',
              path: "meetPage/:meetId",
              builder: (context, state) => MeetPage(
                  meetId: int.tryParse(state.pathParameters['meetId']!) ??
                      0 // TODO 0 не есть хорошо
              ),
              routes: [
                GoRoute(
                  name: 'basketPage',
                  path: "basketPage/:meetIdBasket",
                  builder: (context, state) => BasketPage(
                      meetId: int.tryParse(state.pathParameters['meetIdBasket']!) ??
                          0 // TODO 0 не есть хорошо
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: "friendsPage",
          name: "friendsPage",
          builder: (context, state) => const FriendsPage(),
          routes: [
            GoRoute(
              name: "friendScreen",
              path: "friendScreen/:friendId",
              builder: (context, state) => FriendScreen(
                  friendId: state.pathParameters['friendId'] ??
                      '' // TODO: '' - не есть хорошо
              ),
            ),
          ],),
        GoRoute(
          path: "profilePage",
          name: "profilePage",
          builder: (context, state) => const ProfilePage(),
        ),
      ],
    ),
    GoRoute(
      name: "friendRequestsScreen",
      path: "/friendRequestsScreen",
      builder: (context, state) => const FriendRequestsScreen(),
    ),

  ],
);
