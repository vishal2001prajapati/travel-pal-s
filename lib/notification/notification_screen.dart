import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelpals/utils/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 20,
            color: ConstColors.SimpleTextColor,
            fontFamily: 'MuseoSans-Bold.otf',
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ConstColors.backArrowColor),
          onPressed: () => Get.back(),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading:
                CircleAvatar(child: Image.asset('images/ic_user_image.png')),
            title: Text(
                'Vishal Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            trailing: Text('Yesterday'),
            subtitle: Row(children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff01B5BB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Accept')),
              SizedBox(width: 15),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Color(0xff01B5BB),
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                child: const Text('Delete',
                    style: TextStyle(
                      color: Color(0xff01B5BB),
                    )),
              )
            ]),
          );
        },
      ),
    );
  }
}
