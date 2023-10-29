import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/presentation/pages/auth/login_page.dart';
import 'package:rave_flock/presentation/pages/auth/set_username_screen.dart';
import 'package:rave_flock/presentation/pages/basket_page/basket_page.dart';
import 'package:rave_flock/presentation/pages/friends_page/friends_page.dart';
import 'package:rave_flock/presentation/pages/home_page/home_page.dart';
import 'package:rave_flock/presentation/pages/meet_page/meet_page.dart';
import 'package:rave_flock/presentation/pages/profile_page/profile_page.dart';
import 'package:rave_flock/presentation/pages/splash_page/splash_page.dart';
import 'package:rave_flock/presentation/router/routing_page.dart';
import 'package:rave_flock/presentation/screens/create_new_meet_screen/create_new_meet_screen.dart';
import 'package:rave_flock/presentation/screens/error_screen/error_screen.dart';
import 'package:rave_flock/presentation/screens/friend_requests_screen/friend_requests_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _rootNavigatorHome = GlobalKey<NavigatorState>(debugLabel: 'shellHome');

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
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: "/setUsername",
      builder: (context, state) => const SetUsernameScreen(),
    ),
    GoRoute(
      path: '/errorScreen',
      builder: (context, state) => const ErrorScreen(),
    ),
    GoRoute(
        path: "/homepage",
        builder: (context, state) => const HomePage(),
        routes: [

          GoRoute(
              path: 'routingPage',
              name: 'routingPage',
              builder: (context, state) => const RoutingPage(),
              routes: [
                GoRoute(
                  path: "friendsPage",
                  name: "friendsPage",
                  builder: (context, state) => const FriendsPage(),
                ),
                GoRoute(
                  path: "profilePage",
                  name: "profilePage",
                  builder: (context, state) => const ProfilePage(),
                ),
                GoRoute(
                  path: "friendRequestsScreen",
                  name: "friendRequestsScreen",
                  builder: (context, state) => const FriendRequestsScreen(),
                ),
              ],),
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
                    meetId: int.tryParse(
                        state.pathParameters['meetIdBasket']!) ??
                        0 // TODO 0 не есть хорошо
                ),
              ),
            ],),
        ]),
  ],
);

// SAVED ROUTER
// final GoRouter router = GoRouter(
//   initialLocation: '/',
//   routes: [
//     StatefulShellRoute.indexedStack(
//         builder: (_, state, navigationShell) => ScaffoldWithNavBar(navigationShell: navigationShell),
//         branches: [
//
//           StatefulShellBranch(
//             routes: <RouteBase>[
//
//             ],
//
//           ),
//           StatefulShellBranch(
//             routes: <RouteBase>[
//
//             ],
//
//           ),
//           StatefulShellBranch(
//             routes: <RouteBase>[
//
//             ],
//
//           ),
//
//         ]),
//
//
//     GoRoute(
//       path: "/",
//       builder: (context, state) => const SplashPage(),
//     ),
//     GoRoute(
//       path: "/login",
//       builder: (context, state) => const LoginPage(),
//     ),
//     GoRoute(
//       path: "/setUsername",
//       builder: (context, state) => const SetUsernameScreen(),
//     ),
//     GoRoute(
//       path: '/errorScreen',
//       builder: (context, state) => const ErrorScreen(),
//     ),
//     GoRoute(
//         path: "/homepage",
//         builder: (context, state) => const HomePage(),
//         routes: [
//           GoRoute(
//             path: "friendRequestsScreen",
//             builder: (context, state) => const FriendRequestsScreen(),
//           ),
//           GoRoute(
//               path: "friendsPage",
//               builder: (context, state) => const FriendsPage(),
//               routes: [
//                 GoRoute(
//                   path: "addNewFriendScreen",
//                   builder: (context, state) => const AddNewFriendScreen(),
//                 ),
//               ]),
//           GoRoute(
//               name: 'meetPage',
//               path: "meetPage/:meetId",
//               builder: (context, state) => MeetPage(
//                   meetId: int.tryParse(state.pathParameters['meetId']!) ??
//                       0 // TODO 0 не есть хорошо
//               ),
//               routes: [
//                 GoRoute(
//                   name: 'basketPage',
//                   path: "basketPage/:meetIdBasket",
//                   builder: (context, state) => BasketPage(
//                       meetId: int.tryParse(state.pathParameters['meetIdBasket']!) ??
//                           0 // TODO 0 не есть хорошо
//                   ),
//                 ),
//               ]
//           ),
//           GoRoute(
//             path: "profilePage",
//             builder: (context, state) => const ProfilePage(),
//           ),
//           GoRoute(
//             name: 'createNewMeetScreen',
//             path: "createNewMeetScreen",
//             //TODO: для update meet
//             builder: (context, state) => CreateNewMeetScreen(
//               meetModel: state.extra == null ? null: state.extra! as MeetModel,
//             ),
//           ),
//         ]),
//   ],
// );
