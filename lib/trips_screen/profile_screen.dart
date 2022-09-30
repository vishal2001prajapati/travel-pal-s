import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text('Profile', style: TextStyle(
          fontFamily: 'MuseoSans-Bold.otf',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ConstColors.btnColor,

        ),),
      ),
    );
  }
}
