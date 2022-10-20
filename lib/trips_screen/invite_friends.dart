import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelpals/trips_screen/my_contacts.dart';
import 'package:travelpals/trips_screen/travel_pals_friends.dart';
import 'dart:developer' as logDev;

import '../utils/colors.dart';

class InviteFriendsScreen extends StatefulWidget {
  const InviteFriendsScreen({Key? key}) : super(key: key);

  @override
  State<InviteFriendsScreen> createState() => _InviteFriendsScreenState();
}

class _InviteFriendsScreenState extends State<InviteFriendsScreen> {
  List user = [
    {
      'id': 1,
      'name': 'vishal',
      'flag': true,
      'image': 'images/ic_user_image.png'
    },
    {'id': 2, 'name': 'raj', 'flag': true, 'image': 'images/ic_user_image.png'},
    {'id': 3, 'name': 'jay', 'flag': true, 'image': 'images/ic_user_image.png'},
    {
      'id': 4,
      'name': 'Allie Grater.',
      'flag': true,
      'image': 'images/ic_user_image.png'
    },
    {
      'id': 5,
      'name': 'Teri Dactyl.',
      'flag': true,
      'image': 'images/ic_user_image.png'
    },
    {
      'id': 6,
      'name': 'Olive Yew.',
      'flag': true,
      'image': 'images/ic_user_image.png'
    },
    {
      'id': 7,
      'name': 'Colin Sik',
      'flag': true,
      'image': 'images/ic_user_image.png'
    },
    {
      'id': 8,
      'name': 'Bella',
      'flag': true,
      'image': 'images/ic_user_image.png'
    },
    {
      'id': 9,
      'name': 'Anne',
      'flag': true,
      'image': 'images/ic_user_image.png'
    },
    {
      'id': 10,
      'name': 'Grace',
      'flag': true,
      'image': 'images/ic_user_image.png'
    },
    {
      'id': 11,
      'name': 'Boris',
      'flag': true,
      'image': 'images/ic_user_image.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              titleSpacing: 0,
              elevation: 0,
              backgroundColor: Colors.white,
              title: const Text(
                'Invite Friends',
                style: TextStyle(
                  fontSize: 20,
                  color: ConstColors.SimpleTextColor,
                  fontFamily: 'MuseoSans-Bold.otf',
                ),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back,
                    color: ConstColors.backArrowColor),
                onPressed: () => Get.back(),
              ),
              bottom: const TabBar(
                indicator: UnderlineTabIndicator(
                    borderSide:
                        BorderSide(width: 2.0, color: Color(0xff01B5BB)),
                    insets: EdgeInsets.symmetric(horizontal: 35.0)),
                labelColor: Color(0xff01B5BB),
                labelStyle: TextStyle(
                  fontFamily: 'AmsiProNarw-SemiBold.otf',
                  fontSize: 16,
                ),
                unselectedLabelColor: Color(0xff9FC7C9),
                tabs: [
                  Tab(text: "Travel Pal Friends"),
                  Tab(text: "My Contacts")
                ],
              ),
            ),
            body: const TabBarView(
              children: [TravelPalsFriend(), MyContactsScreen()],
            )));
  }
}
