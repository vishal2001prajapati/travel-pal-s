import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelpals/trips_screen/create_post_screen.dart';
import 'package:travelpals/trips_screen/post_value_update.dart';


import 'package:travelpals/utils/colors.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  TextEditingController searchController = TextEditingController();
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
  PostTripValueUpdate postTripValueUpdate = PostTripValueUpdate();
  int like = 0;
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
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
      body: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          TextFormField(
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
                  child: InkWell(

                    onTap: () {
                      searchController.text = '';
                    },
                    child: Icon(Icons.cancel_outlined, color: Colors.grey),
                  ),
                ),
                border: InputBorder.none,
                hintText: "Search Here",
              )),
          const SizedBox(
            height: 19,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextFormField(
                      textInputAction: TextInputAction.search,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 12),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintText: "Whats on your mind?",
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))))),
                ),
              ),
              IconButton(onPressed: () {
               Get.to(CreatePostScreen());
              }, icon: Icon(Icons.image))
            ],
          ),
          const SizedBox(
            height: 17,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _userName.length,
              itemBuilder: (context, index) {
                return tripView(index);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget tripView(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Center(
          child: CarouselIndicator(
            activeColor: Colors.red,
            color: Colors.grey,
            count: _imageSlider.length,
            index: pageIndex,
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Image.asset(_userImage[index]),
          ),
          title: Text(_userName[index]),
          subtitle: Text(_descInfo[index]),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(
                onPressed: () {
                  postTripValueUpdate.increment();
                },
                icon: const Icon(Icons.thumb_up_off_alt_outlined),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              width: 35,
              height: 20,
              child: Center(
                child: Obx(() => Text('${postTripValueUpdate.valueUpdate}')),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble_outline),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              width: 35,
              height: 20,
              child: Center(child: Text('0')),
            ),
          ],
        ),
      ],
    );
  }


}
