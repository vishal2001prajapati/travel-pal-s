import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travelpals/utils/colors.dart';
import 'package:video_player/video_player.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({Key? key}) : super(key: key);

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? imagefiles;
  File? _video;
  bool _checkVideo = false;

  VideoPlayerController videoPlayerController =
      VideoPlayerController.file(File(''));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          'Create Post',
          style: TextStyle(
            fontFamily: 'MuseoSans-Bold.otf',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: ConstColors.SimpleTextColor,
          ),
        ),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Get.back()),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    child: Image.asset('images/ic_user_image.png'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Adam Jane',
                  style: TextStyle(
                      color: ConstColors.SimpleTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'MuseoSans-Regular.otf'),
                )
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                  maxLines: 6,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15, top: 20),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xffD9D9D9)),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Whats on your mind?",
                      hintStyle: TextStyle(
                        color: Color(0xffAFAFAF),
                        fontSize: 16,
                        fontFamily: 'MuseoSans-SemiBold.otf',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xffD9D9D9)),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))))),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(
                'Add Photos or Videos',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'AmsiProNarw-Regular.otf',
                ),
              ),
            ), const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
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
            SizedBox(
              height: 50.h,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22),
              child: Text('Add Location',
                  style: TextStyle(
                    color: ConstColors.SimpleTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 20),
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF0F0F0),
                    prefixIcon:
                        const Icon(Icons.location_on, color: Color(0xff334155)),
                    contentPadding: const EdgeInsets.only(left: 15),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffF0F0F0)),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color(0xffF0F0F0)),
                    ),
                    ),
              ),
            ),
            const SizedBox(
              height: 84,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ConstColors.btnColor,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(26.0)), // Background color
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      child: Text(
                        'Post',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
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
    );
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

}
