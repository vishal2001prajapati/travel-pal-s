import 'package:flutter/material.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:get/get.dart';
import 'package:travelpals/trips_screen/post_trip_screen.dart';


import '../signin_screen/localScreenController.dart';
import '../utils/colors.dart';

class LocalScreen extends StatefulWidget {
  const LocalScreen({Key? key}) : super(key: key);

  @override
  State<LocalScreen> createState() => _LocalScreenState();
}

class _LocalScreenState extends State<LocalScreen> {
  TextEditingController searchController = TextEditingController();
  LocalScreenController localScreenController =
      Get.put(LocalScreenController());
  int pageIndex = 0;
  int like = 0;

  final List<Widget> _imageSlider = [
    Image.asset(
      'images/ic_image_slider.png',
    ),
    Image.asset('images/ic_image_slider.png'),
    Image.asset('images/ic_image_slider.png'),
    Image.asset('images/ic_image_slider.png'),
  ];
  final List<String> _userImage = [
    'images/ic_user_image.png',
    'images/ic_user_image.png',
    'images/ic_user_image.png',
    'images/ic_user_image.png',
  ];
  final List<String> _userName = ['Vishal', 'Raj', 'Jay', 'Ram'];
  final List<String> _descInfo = [
    'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint...',
    'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint...',
    'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint...',
    'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint...',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Container(
          height: 55,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          padding: EdgeInsets.all(10),
          child: TextFormField(
              controller: searchController,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0),
                  child: Icon(Icons.search_rounded, color: Colors.grey),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 5.0, bottom: 5.0, right: 5.0),
                  child: GestureDetector(
                    onTap: () {
                      searchController.text = '';
                    },
                    child: Icon(Icons.cancel_outlined, color: Colors.grey),
                  ),
                ),
                border: InputBorder.none,
                hintText: "Search Here",
              )),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return tripView(index);
            },
            itemCount: _userName.length,
          ),
        ),
      ],
    );
  }

  Future bottomSheet() {
    return showModalBottomSheet(

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (context) {
          return Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Subscribe to TravelPals',
                style: TextStyle(
                    fontFamily: 'MuseoSans-Bold.otf',
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              SizedBox(
                height: 29,
              ),
              Text(
                'In order to use the amazing features of\n      TravelPals, you need to subsribe.',
                style: TextStyle(
                    fontFamily: 'MuseoSans-Bold.otf',
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
              SizedBox(
                height: 57,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          side: BorderSide(
                              width: 1.0, color: ConstColors.btnColor),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 10),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                color: ConstColors.btnColor,
                                fontSize: 18,
                                fontFamily: 'MuseoSans-Regular.otf'),
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.to(PostTripScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ConstColors.btnColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                26.0)), // Background color
                      ),
                      child: const Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 10, right: 10),
                        child: Text(
                          'Explore Plans',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'MuseoSans-SemiBold.otf',
                          ),
                        ),
                      )),
                ],
              )
            ],
          );
        });
  }

  Widget tripView(int index) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView(
            children: _imageSlider,
            onPageChanged: (_pageIndex) {
              setState(() {
                pageIndex = _pageIndex;
              });
            },
          ),
        ),
        const SizedBox(height: 2),
        CarouselIndicator(
          activeColor: Colors.red,
          color: Colors.grey,
          count: _imageSlider.length,
          index: pageIndex,
        ),
        ListTile(
          leading: CircleAvatar(
            child: Image.asset(_userImage[index]),
          ),
          title: Text(_userName[index]),
          subtitle: Text(_descInfo[index]),
        ),
        Container(
          height: 50,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      like++;
                    });
                  },
                  icon: const Icon(Icons.thumb_up_off_alt_outlined),
                ),
                Text(
                  '$like',
                  style: TextStyle(
                      /*  background:  Paint()..color = Colors.grey*/
                      ),
                ),
                const SizedBox(
                  width: 160,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                ),
                Text(
                  '158',
                  style: TextStyle(
                      /*  background:  Paint()..color = Colors.grey*/
                      ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Expanded(
                  child: Container(
                    height: 20,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          bottomSheet();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ConstColors.btnColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  26.0)), // Background color
                        ),
                        child: Text(
                          'Ask to Join',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: 'MuseoSans-SemiBold.otf',
                          ),
                        )),
                  ),
                ),

                 Obx(() => Text('${localScreenController.like.value}')),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
