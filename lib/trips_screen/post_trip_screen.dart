import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travelpals/trips_screen/GetXSwitchState.dart';
import 'package:travelpals/trips_screen/post_value_update.dart';
import 'package:video_player/video_player.dart';

import '../utils/colors.dart';
import 'invite_friends.dart';

class PostTripScreen extends StatefulWidget {
  const PostTripScreen({Key? key}) : super(key: key);

  @override
  State<PostTripScreen> createState() => _PostTripScreenState();
}

class _PostTripScreenState extends State<PostTripScreen> {
  PostTripValueUpdate postTripValueUpdate = PostTripValueUpdate();
  GetXSwitchState getXSwitchState = GetXSwitchState();
  bool isSwitched = false;
  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? imagefiles;
  File? _video;
  bool _checkVideo = false;

  VideoPlayerController videoPlayerController = VideoPlayerController.file(File(''));
  bool isVideo = false;

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
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Trip Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'AmsiProNarw-Regular.otf',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF0F0F0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Trip Details',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'AmsiProNarw-Regular.otf',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 5,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF0F0F0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Add Photos or Videos',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'AmsiProNarw-Regular.otf',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.grey,
                  child: IconButton(
                    onPressed: () {
                      alert();
                    },
                    icon: const Icon(
                      Icons.add_box,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                (imagefiles != null && !_checkVideo)
                    ? SizedBox(
                        height: 150,
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemBuilder: ((BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.file(File(imagefiles![index].path),
                                    fit: BoxFit.cover),
                              );
                            }),
                            itemCount: imagefiles!.length),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SizedBox(
                            height: 100,
                            width: 100,
                            child: VideoPlayer(videoPlayerController)),
                      ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Trip Start Date',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'AmsiProNarw-Regular.otf',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      suffixIcon:
                          Icon(Icons.calendar_month, color: Color(0xff334155)),
                      filled: true,
                      fillColor: Color(0xffF0F0F0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: BorderSide(width: 2, color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                      )),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Trip End Date',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'AmsiProNarw-Regular.otf',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      suffixIcon:
                          Icon(Icons.calendar_month, color: Color(0xff334155)),
                      filled: true,
                      fillColor: Color(0xffF0F0F0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: BorderSide(width: 2, color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                      )),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      child: Text(
                        'How many people can join this trip?',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'AmsiProNarw-Regular.otf',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    // Counter Container
                    Container(
                      width: 128,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: Color(0xffF0F0F0),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: Color(0xffF0F0F0),
                            ),
                            width: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                postTripValueUpdate.decrement();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                fixedSize: const Size(200, 200),
                                shape: const CircleBorder(),
                              ),
                              child: const Text(
                                '-',
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Obx(
                            () => Text(
                              '${postTripValueUpdate.valueUpdate}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'AmsiProNarw-Regular.otf',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                color: Color(0xffF0F0F0),
                              ),
                              width: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  postTripValueUpdate.increment();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                  fixedSize: const Size(200, 200),
                                  shape: const CircleBorder(),
                                ),
                                child: const Text(
                                  '+',
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 29,
                ),
                Row(
                  children: [
                    const Text(
                      'Make this trip private',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'AmsiProNarw-Regular.otf',
                      ),
                    ),
                    const SizedBox(
                      width: 164,
                    ),
                    Expanded(
                      child: Switch(
                        value:
                            isSwitched /*getXSwitchState.isSwitcheded.value*/,
                        onChanged: (val) {
                          setState(() {
                            isSwitched = val;
                            print('Switch state is --> $val');
                          });
                          /*      getXSwitchState.changeSwitchState(val);
                            print('Switch state is --> $val');*/
                        },
                        activeTrackColor: ConstColors.btnColor,
                        activeColor: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 29,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Invite Friends',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'AmsiProNarw-Regular.otf',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 150,
                    ),
                    SizedBox(
                      width: 80,
                      height: 30,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(InviteFriendsScreen());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ConstColors.btnColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0)), // Background color
                          ),
                          child: Text(
                            'Invite',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'MuseoSans-SemiBold.otf',
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ConstColors.btnColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  26.0)), // Background color
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 16, bottom: 16),
                          child: Text(
                            'Post',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'MuseoSans-SemiBold.otf',
                            ),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  openImages() async {
    _checkVideo = false;
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      //  var videos = await imgpicker.pickVideo(source: ImageSource.gallery);

      if (pickedfiles != null /*|| videos != null*/) {
        imagefiles = pickedfiles;
        //    video = videos;
        setState(() {});
      } else {
        if (kDebugMode) {
          print("No image is selected.");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("error while picking file.");
      }
    }
  }

  //video pick
  Future pickVideo() async {
    _checkVideo = true;
    final video = await imgpicker.pickVideo(source: ImageSource.gallery);
    _video = File(video!.path);
    videoPlayerController = VideoPlayerController.file(_video!)
      ..initialize().then((value) => {
            setState(() {
              videoPlayerController.play();
            })
          });
  }

  void alert() async {
    await Get.dialog(AlertDialog(
      titleTextStyle: const TextStyle(
        fontFamily: 'Museo Sans',
      ),
      elevation: 5,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              'TravelPals',
              style: TextStyle(
                  fontFamily: 'Museo Sans',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            'Choose media type you want to upload',
            style: TextStyle(fontFamily: 'Museo Sans'),
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(Get.overlayContext!, rootNavigator: true).pop();
                },
                child: const Text('Cancel')),
            TextButton(
                onPressed: () {
                  Navigator.of(Get.overlayContext!, rootNavigator: true).pop();

                  openImages();
                },
                child: Text('Image')),
            TextButton(
                onPressed: () {
                  Navigator.of(Get.overlayContext!, rootNavigator: true).pop();
                  pickVideo();
                },
                child: Text('Video')),
          ],
        )
      ],
    ));
  }
}
