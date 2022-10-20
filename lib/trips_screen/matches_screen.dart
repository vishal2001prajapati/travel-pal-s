import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'package:travelpals/user_profile/ProfileDetailPage.dart';
import 'package:travelpals/utils/colors.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  bool isVisible = false;
  SwipeableCardSectionController _cardController =
      SwipeableCardSectionController();

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
      body: isVisible
          ? Column(
              children: [
                const SizedBox(
                  height: 53,
                ),
                Image.asset('images/ic_no_catch_found.png'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Match not found!',
                  style: TextStyle(
                    color: Color(0xff334155),
                    fontFamily: 'MuseoSans-Bold.otf',
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                const Text(
                  'At vero eos et accusamus et iusto odio dignissimos\nducimus qui blanditiis praesentium ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'AmsiProNarw-Regular.otf',
                    color: Color(0xffA9A7A7),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                SizedBox(
                  width: 160,
                  height: 26,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ConstColors.btnColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                26.0)), // Background color
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 10, right: 10),
                        child: Text(
                          'Update Your Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'AmsiProNarw-Regular.otf',
                          ),
                        ),
                      )),
                ),
              ],
            )
          : Column(
              children: [
                SwipeableCardsSection(
                  cardController: _cardController,
                  context: context,
                  //add the first 3 cards (widgets)
                  items: [
                    GestureDetector(
                      onTap: () {
                        Get.to(ProfileDetailPage());
                      },
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Card(
                                color: Colors.white,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.only(
                                      bottomEnd: Radius.circular(10),
                                      bottomStart: Radius.circular(10),
                                      topEnd: Radius.circular(10),
                                      topStart: Radius.circular(10)),
                                ),
                                child: Column(
                                  children: [
                                    Stack(children: [
                                      Image.asset('images/ic_card.png',
                                          fit: BoxFit.cover),
                                      Positioned(
                                          left: 20,
                                          bottom: 140,
                                          child: Text(
                                            'Namita Singh',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Museo Sans',
                                                color: Colors.white),
                                          )),
                                      Positioned(
                                          right: 20,
                                          left: 20,
                                          bottom: 60,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.person_outline_rounded,
                                                color: Colors.white,
                                              ),
                                              Expanded(
                                                  child: Text(
                                                'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium ',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Museo Sans',
                                                    color: Colors.white),
                                              )),
                                            ],
                                          )),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Positioned(
                                          right: 20,
                                          left: 40,
                                          bottom: 30,
                                          child: Text(
                                            'Boston, MI, USA',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Museo Sans',
                                                color: Colors.white),
                                          )),
                                    ]),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(16)),
                                            ),
                                            child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    //set output date to TextField value.
                                                  });
                                                },
                                                child: const Icon(
                                                  Icons.cancel_rounded,
                                                  color: Colors.red,
                                                  size: 36,
                                                )),
                                          ),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16)),
                                              color: ConstColors.btnColor),
                                          child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  //set output date to TextField value.
                                                });
                                              },
                                              child: Icon(
                                                Icons.check,
                                                color: Colors.white,
                                                size: 30,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                  //Get card swipe event callbacks
                  onCardSwiped: (dir, index, widget) {},
                  //
                  enableSwipeUp: true,
                  enableSwipeDown: false,
                ),
              ],
            ),
    );
  }
}
