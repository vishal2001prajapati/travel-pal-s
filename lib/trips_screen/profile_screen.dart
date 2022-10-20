import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelpals/trips_screen/setting_screen.dart';
import 'package:travelpals/utils/AppColor.dart';
import 'package:travelpals/utils/colors.dart';



class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(SettingScreen());
                },
                icon: const Icon(
                  Icons.settings,
                  color: Color(0xff334155),
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Column(
                  children: [
                    Stack(children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(90), // Image radius
                          child: Image.asset('images/ic_user_image_.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 10,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(7, 7)),
                            color: ConstColors.btnBackGroundColor,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Adam Jane',
                      style: TextStyle(
                        color: ConstColors.SimpleTextColor,
                        fontSize: 20.sp,
                        fontFamily: 'MuseoSans-SemiBold.otf',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Text(
                      'johnathan@gmail.com',
                      style: TextStyle(
                        color: ConstColors.SimpleTextColor,
                        fontSize: 14.sp,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'MuseoSans-SemiBold.otf',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      '+1 562 562 5626',
                      style: TextStyle(
                        color: ConstColors.SimpleTextColor,
                        fontSize: 14.sp,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'MuseoSans-SemiBold.otf',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(right: 21, left: 19),
                child: Container(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 14, right: 13, bottom: 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 15,
                                ),
                                child: Text(
                                  'Bio',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'MuseoSans-Bold.otf',
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      color: ConstColors.SimpleTextColor),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15,
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(7, 7)),
                                    color: Color(0xffAFAFAF),
                                  ),
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Text(
                            'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi',
                            style: TextStyle(
                                color: Color(0xff787575),
                                fontStyle: FontStyle.normal,
                                fontSize: 12.sp,
                                fontFamily: 'AmsiProNarw-Regular.otf',
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300.h,
                width: ScreenUtil().screenWidth,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Photos & Videos",
                              style: TextStyle(
                                  color: AppColor.appTextColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600)),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(7, 7)),
                              color: Color(0xffAFAFAF),
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Expanded(
                        child: GridView.builder(
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          gridDelegate:
                              new SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 0,
                          ),
                          itemCount: 5,
                          primary: false,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: Column(children: [
                                Card(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    elevation: 2.0,
                                    shadowColor:
                                        AppColor.blackColor.withOpacity(0.7),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          alignment:
                                              AlignmentDirectional.topCenter,
                                          fit: StackFit.loose,
                                          children: <Widget>[
                                            SizedBox(
                                              child: Image.asset(
                                                'images/ic_temp.png',
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ))
                              ]),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
