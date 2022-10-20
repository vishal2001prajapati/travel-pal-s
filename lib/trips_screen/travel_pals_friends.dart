import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'dart:developer' as logDev;

class TravelPalsFriend extends StatefulWidget {
  const TravelPalsFriend({Key? key}) : super(key: key);

  @override
  State<TravelPalsFriend> createState() => _TravelPalsFriendState();
}

class _TravelPalsFriendState extends State<TravelPalsFriend> {
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
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: user.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Image.asset(user[index]['image']),
                ),
                title: Text('${user[index]['name']}',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'AmsiProNarw-Regular.otf')),
                trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      user[index]['flag'] = !user[index]['flag'];
                      // isFollowedByMe = !isFollowedByMe;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 77,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: user[index]['flag'] == true
                          ? ConstColors.btnColor
                          : Colors.grey,
                    ),
                    child: Center(
                      child: Text(
                        user[index]['flag'] == true ? 'Invite' : 'Remove',
                        style: TextStyle(
                            color: user[index]['flag']
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    ));
  }
}
