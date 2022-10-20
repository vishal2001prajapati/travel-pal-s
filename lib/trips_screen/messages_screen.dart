import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelpals/chat_deatails_screen/ChatDetailPage.dart';
import 'package:travelpals/utils/colors.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  List<String> userImages = [
    'images/ic_user_image.png',
    'images/ic_user_image.png',
    'images/ic_user_image.png',
    'images/ic_user_image.png'
  ];
  List<String> userName = ['vishal', 'raj', 'jay', 'Courier'];
  List<String> userMsg = [
    'At vero eos et accusamus et iusto odio.',
    'At vero eos et accusamus et iusto odio.',
    'At vero eos et accusamus et iusto odio.',
    'At vero eos et accusamus et iusto odio.'
  ];

  List<String> time = ['10 min', '10 min', '10 min', '10 min'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              onPressed: () {}),
        ],
      ),
      body: Container(
        child: (userName != null && userName.isNotEmpty)
            ? ListView.builder(
                itemCount: userName.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(userImages[index]),
                    ),
                    title: Text(userName[index]),
                    subtitle: Text(userMsg[index]),
                    trailing: Text(time[index]),
                    onTap: () {
                      Get.to(ChatDetailPage(), arguments: [
                        userImages[index].toString(),
                        userName[index].toString()
                      ]);
                    },
                  );
                })
            : Container(child: Text("NO data")),
      ),
    );
  }
}
