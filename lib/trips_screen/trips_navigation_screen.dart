import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelpals/trips_screen/profile_screen.dart';
import 'package:travelpals/trips_screen/trips_screen.dart';

import 'bavifation_controller.dart';
import 'matches_screen.dart';
import 'messages_screen.dart';
import 'posts_screen.dart';

class TripsScreenBottomNavigation extends StatefulWidget {
  const TripsScreenBottomNavigation({Key? key}) : super(key: key);

  @override
  State<TripsScreenBottomNavigation> createState() =>
      _TripsScreenBottomNavigationState();
}

class _TripsScreenBottomNavigationState
    extends State<TripsScreenBottomNavigation> {
  int _currentIndex = 0;
  final screen = [
    TripsScreen(),
    MatchesScreen(),
    PostsScreen(),
    MessagesScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    LandingPageController landingPageController =
        Get.put(LandingPageController(), permanent: false);
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: const [
              TripsScreen(),
              MatchesScreen(),
              PostsScreen(),
              MessagesScreen(),
              ProfileScreen()
            ],
          )),
      bottomNavigationBar: Obx(() => Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: BottomNavigationBar(
                currentIndex: landingPageController.tabIndex.value,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedItemColor: Color(0xff01B5BB),
                unselectedItemColor: Color(0xffAFAFAF),
                selectedFontSize: 15,
                unselectedFontSize: 15,
                iconSize: 30,
                selectedLabelStyle:
                    const TextStyle(fontFamily: 'AmsiProNarw-Regular.otf'),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: 'Trips'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.grid_view,
                      ),
                      label: 'Matches'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.edit,
                      ),
                      label: 'Post'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.message_outlined, size: 30),
                      label: 'Messages'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                      ),
                      label: 'Profile'),
                ],
                onTap: landingPageController.changeTabIndex,
              )))),
    );
  }
}
