import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/presentation/pages/basket_page/create_basket_item/create_basket_item.dart';
import 'package:rave_flock/presentation/pages/basket_page/single_basket_item_page/single_basket_item_page.dart';
import 'package:rave_flock/presentation/pages/friends_page/widgets/add_new_friend_widget.dart';
import 'package:rave_flock/presentation/pages/meet_page/guests_of_meet_screen/guests_of_meet_screen.dart';
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
import 'package:rave_flock/presentation/router/scaffold_with_nested_navigation.dart';
import 'package:rave_flock/presentation/screens/error_screen/error_screen.dart';
import 'package:rave_flock/presentation/screens/friend_requests_screen/friend_requests_screen.dart';
import 'package:rave_flock/presentation/screens/friend_screen/friend_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigator1Key = GlobalKey<NavigatorState>(debugLabel: 'shell1');
final _shellNavigator2Key = GlobalKey<NavigatorState>(debugLabel: 'shell2');
final _shellNavigator3Key = GlobalKey<NavigatorState>(debugLabel: 'shell3');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // the UI shell
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        // second branch (A)
        StatefulShellBranch(
          navigatorKey: _shellNavigator1Key,
          routes: [
            // top route inside branch
            GoRoute(
              name: "friendsPage",
              path: "/friendsPage",
              builder: (context, state) => const FriendsPage(),
              routes: [
                GoRoute(
                  name: "addNewFriendScreen",
                  path: "addNewFriendScreen",
                  builder: (context, state) => const AddNewFriendScreen(),
                ),
                GoRoute(
                  name: "friendScreen",
                  path: "friendScreen/:friendId",
                  builder: (context, state) =>
                      FriendScreen(friendId: state.pathParameters['friendId'] ?? '' // TODO: '' - не есть хорошо
                          ),
                ),
              ],
            ),
          ],
        ),
        // first branch (B)
        StatefulShellBranch(
          navigatorKey: _shellNavigator2Key,
          routes: [
            // top route inside branch
            GoRoute(
              name: 'homePage',
              path: "/homePage",
              builder: (context, state) => const HomePage(),
              routes: [
                GoRoute(
                  name: 'createNewMeetScreen',
                  path: "createNewMeetScreen",
                  builder: (context, state) => CreateNewMeetScreen(
                    meetModel: state.extra == null ? null : state.extra! as MeetModel,
                  ),
                ),
                GoRoute(
                  name: 'meetPage',
                  path: "meetPage/:meetId",
                  builder: (context, state) => MeetPage(meetId: int.tryParse(state.pathParameters['meetId']!) ?? 0),
                  routes: [
                    GoRoute(
                      name: 'guestsOfMeetScreen',
                      path: 'guestsOfMeetScreen',
                      builder: (context, state) =>
                          GuestsOfMeetScreen(meetId: int.tryParse(state.pathParameters['meetId']!) ?? 0),
                    ),
                    GoRoute(
                        name: 'basketPage',
                        path: "basketPage/:meetIdBasket",
                        builder: (context, state) => BasketPage(
                              meetId: int.tryParse(state.pathParameters['meetIdBasket']!) ?? 0, // TODO 0 не есть хорошо
                            ),
                        routes: [
                          GoRoute(
                            name: 'createNewBasketItem',
                            path: "createNewBasketItem",
                            builder: (context, state) => CreateOrUpdateBasketItem(
                              meetId: int.tryParse(state.pathParameters['meetIdBasket']!) ?? 0,
                            ),
                          ),
                          GoRoute(
                            name: 'singleBasketItemPage',
                            path: "singleBasketItemPage/:basketItemId",
                            builder: (context, state) => SingleBasketItemPage(
                              meetId: int.tryParse(state.pathParameters['meetIdBasket']!) ?? 0,
                              basketItemId: int.tryParse(state.pathParameters['basketItemId']!) ?? 0,
                            ),
                          ),
                        ]),
                  ],
                ),
              ],
            ),
          ],
        ),

        // third branch (C)
        StatefulShellBranch(
          navigatorKey: _shellNavigator3Key,
          routes: [
            // top route inside branch
            GoRoute(
              name: "profilePage",
              path: "/profilePage",
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),
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
      name: 'helperInfoPage',
      path: "/helperInfoPage",
      builder: (context, state) => const HelperInfoPage(),
    ),
    GoRoute(
      name: "friendRequestsScreen",
      path: "/friendRequestsScreen",
      builder: (context, state) => const FriendRequestsScreen(),
    ),
  ],
);
