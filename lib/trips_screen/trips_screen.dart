import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelpals/notification/notification_screen.dart';
import 'package:travelpals/trips_screen/local_screen.dart';
import 'package:travelpals/utils/colors.dart';


class TripsScreen extends StatefulWidget {
  const TripsScreen({Key? key}) : super(key: key);

  @override
  State<TripsScreen> createState() => _TripsScreenState();
}

class _TripsScreenState extends State<TripsScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.0, color: Color(0xff01B5BB)),
                insets: EdgeInsets.symmetric(horizontal: 35.0)),
            labelColor: Color(0xff01B5BB),
            labelStyle: TextStyle(
              fontFamily: 'AmsiProNarw-SemiBold.otf',
              fontSize: 16,
            ),
            unselectedLabelColor: Color(0xff9FC7C9),
            tabs: [Tab(text: "Everywhere"), Tab(text: "Local")],
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: const Text(
            'TravelPals',
            style: TextStyle(
              fontFamily: 'MuseoSans-Bold.otf',
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: ConstColors.btnColor,
            ),
          ),
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.favorite_outline_rounded,
                  color: Color(0xff334155),
                ),
                onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.notifications_none_rounded,
                    color: Color(0xff334155)),
                onPressed: () {
                  Get.to(NotificationScreen());
                }),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: ConstColors.btnColor,
            elevation: 5,
            foregroundColor: Colors.white60,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            )),
        body: TabBarView(
          children: [LocalScreen(), LocalScreen()],
        ),
      ),
    );
  }
}
