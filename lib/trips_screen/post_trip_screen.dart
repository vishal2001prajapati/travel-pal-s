import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class PostTripScreen extends StatefulWidget {
  const PostTripScreen({Key? key}) : super(key: key);

  @override
  State<PostTripScreen> createState() => _PostTripScreenState();
}

class _PostTripScreenState extends State<PostTripScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Post a Trip',
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
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                'Trip Name',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'AmsiProNarw-Regular.otf',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,

                  fillColor: Color(0xffF0F0F0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    
                  )
                ),
              ),
              Text(
                'Trip Details',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'AmsiProNarw-Regular.otf',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF0F0F0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),

                    )
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Add Photos or Videos',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'AmsiProNarw-Regular.otf',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.calendar_month),
                    filled: true,
                    fillColor: Color(0xffF0F0F0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                    )
                ),
              ),
              SizedBox(
                height: 24,
              ),


              

            ],
          ),
        ),
      ),
    );
  }
}
