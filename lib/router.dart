
import 'package:go_router/go_router.dart';
import 'package:rave_flock/presentation/pages/auth/login_page.dart';
import 'package:rave_flock/presentation/pages/auth/set_username_screen.dart';
import 'package:rave_flock/presentation/pages/friends_page/friends_page.dart';
import 'package:rave_flock/presentation/pages/home_page/home_page.dart';
import 'package:rave_flock/presentation/pages/splash_page/splash_page.dart';
import 'package:rave_flock/presentation/screens/add_new_friend_screen/add_new_friend_screen.dart';
import 'package:rave_flock/presentation/screens/friend_requests_screen/friend_requests_screen.dart';

final GoRouter router = GoRouter(
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
        path: "/homepage",
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: "friendRequestsScreen",
            builder: (context, state) => FriendRequestsScreen(),
          ),
          GoRoute(
              path: "friendsPage",
              builder: (context, state) => const FriendsPage(),
              routes: [
                GoRoute(
                  path: "addNewFriendScreen",
                  builder: (context, state) => const AddNewFriendScreen(),
                ),
              ])
        ]),
  ],
);
