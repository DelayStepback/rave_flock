import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  ScaffoldWithNavBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final double displayWidth = MediaQuery.of(context).size.width;
    void _onTap(BuildContext context, int index) {
      navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      );
    }
    return Scaffold(
      extendBody: true,
      body: navigationShell,
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(displayWidth * .06),
        height: displayWidth * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: listOfIcons.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                _onTap(context, index);
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == navigationShell.currentIndex
                        ? displayWidth * .32
                        : displayWidth * .18,
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == navigationShell.currentIndex ? displayWidth * .12 : 0,
                      width: index == navigationShell.currentIndex ? displayWidth * .32 : 0,
                      decoration: BoxDecoration(
                        color: index == navigationShell.currentIndex
                            ? Colors.blueAccent.withOpacity(.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 2),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == navigationShell.currentIndex
                        ? displayWidth * .31
                        : displayWidth * .18,
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        // Row(
                        //   children: [
                        //     AnimatedContainer(
                        //       duration: Duration(seconds: 1),
                        //       curve: Curves.fastLinearToSlowEaseIn,
                        //       width:
                        //       index == navigationShell.currentIndex ? displayWidth * .13 : 0,
                        //     ),
                        //     AnimatedOpacity(
                        //       opacity: index == navigationShell.currentIndex ? 1 : 0,
                        //       duration: Duration(seconds: 1),
                        //       curve: Curves.fastLinearToSlowEaseIn,
                        //       child: Text(
                        //         index == navigationShell.currentIndex
                        //             ? '${listOfStrings[index]}'
                        //             : '',
                        //         style: TextStyle(
                        //           color: Colors.blueAccent,
                        //           fontWeight: FontWeight.w600,
                        //           fontSize: 15,
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == navigationShell.currentIndex ? displayWidth * .0 : 20,
                            ),
                            Icon(
                              listOfIcons[index],
                              size: displayWidth * .076,
                              color: index == navigationShell.currentIndex
                                  ? Colors.blueAccent
                                  : Colors.black26,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.people_alt_sharp), label: 'Section A'),
      //     BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Section B'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person_pin_outlined), label: 'Section C'),
      //   ],
      //   currentIndex: navigationShell.currentIndex,
      //   onTap: (int index) => _onTap(context, index),
      // ),
    );
  }
  final List<IconData> listOfIcons = [
    Icons.people_alt_sharp,
    Icons.home_rounded,
    Icons.person_rounded,
  ];

  final List<String> listOfStrings = [
    'Friends',
    'Home',
    'Profile',
  ];
}
