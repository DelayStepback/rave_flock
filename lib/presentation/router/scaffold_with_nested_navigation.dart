import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        
        backgroundColor: Colors.transparent,
        shadowColor:  Colors.transparent,
        elevation: 0,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: navigationShell.currentIndex,
        indicatorColor: Colors.redAccent,
        destinations: const [
          NavigationDestination(label: 'Friends', icon: Icon(Icons.person_add_alt_1)),
          NavigationDestination(label: 'Meets', icon: Icon(Icons.home)),
          NavigationDestination(label: 'Profile', icon: Icon(Icons.accessibility_new_sharp)),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
