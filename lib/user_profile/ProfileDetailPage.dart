import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelpals/utils/AppColor.dart';

import 'ProfileDetailController.dart';

class ProfileDetailPage extends GetView<ProfileDetailController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: CustomScrollView(
              controller: controller.scrollController,
              slivers: [
                SliverAppBar(
                  pinned: true,
                  expandedHeight: 0.33.sh,
                  backgroundColor: AppColor.whiteColor,
                  leading: Visibility(
                    visible: controller.lastStatus.value,
                    child: InkWell(
                        splashColor: AppColor.whiteColor,
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: AppColor.appBtnBgColor,
                        )),
                  ),
                  actions: [
                    Visibility(
                      visible: controller.lastStatus.value,
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: AppColor.whiteColor,
                            textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Report',
                            style: TextStyle(
                                fontSize: 18, color: AppColor.whiteColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                  flexibleSpace: LayoutBuilder(builder: (context, cons) {
                    return FlexibleSpaceBar(
                      titlePadding: EdgeInsets.only(top: 5.h),
                      centerTitle: true,
                      title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 15.w),
                            Visibility(
                              visible: cons.biggest.height <= 0.20.sh,
                              child: InkWell(
                                  splashColor: AppColor.whiteColor,
                                  onTap: () {
                                    FocusScope.of(context).unfocus();
                                    Get.back();
                                  },
                                  child: Icon(Icons.arrow_back)),
                            ),
                            SizedBox(width: 12.w),
                            Visibility(
                              visible: cons.biggest.height <= 0.15.sh,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/ic_user_image_.png'),
                              ),
                            ),
                            SizedBox(width: 12),
                            Visibility(
                              visible: cons.biggest.height <= 0.15.sh,
                              child: RichText(
                                text: TextSpan(
                                  text: "Namita Singh",
                                  style: TextStyle(
                                    color: AppColor.appTextColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Visibility(
                              visible: cons.biggest.height <= 0.15.sh,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10.w),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor:
                                        AppColor.appUnSelectedRadioGrayColor,
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text('Report'),
                                ),
                              ),
                            )
                          ]),
                      background: Image.asset('images/ic_user_image_.png',
                          fit: BoxFit.cover),
                    );
                  }),
                ),
                SliverToBoxAdapter(
                    child: Card(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.0),
                      topLeft: Radius.circular(15.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 20.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "Namita Singh",
                                style: TextStyle(
                                    color: AppColor.appTextColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.person,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: SizedBox(
                                    child: RichText(
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.clip,
                                      // maxLines: 2,
                                      text: TextSpan(
                                        text:
                                            "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium ",
                                        style: TextStyle(
                                          color: AppColor.appBtnTextColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Expanded(
                                  child: SizedBox(
                                    child: RichText(
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.clip,
                                      // maxLines: 2,
                                      text: TextSpan(
                                        text: "Boston, MI, USA",
                                        style: TextStyle(
                                          color: AppColor.appBtnTextColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            Visibility(
                              visible:
                                  true /*AppUser.currentUser.countryId == 233*/,
                              child: Row(
                                children: [
                                  InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.appBtnBgColor,
                                        boxShadow: [
                                          BoxShadow(
                                              color: AppColor.appBtnBgColor,
                                              spreadRadius: 1),
                                        ],
                                      ),
                                      padding: EdgeInsets.only(
                                          left: 16.w,
                                          right: 16.w,
                                          top: 6.h,
                                          bottom: 6.h),
                                      child: Text(
                                        'strBackgroundCheck'.tr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: AppColor.whiteColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    onTap: () {
                                      _showBackgroundCheckBottomSheet();
                                    },
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      /* Get.to(ChatPage());*/
                                    },
                                    child: Icon(Icons.schedule_send),
                                  )
                                ],
                              ),
                            ),
                            Visibility(
                              visible:
                                  true /*AppUser.currentUser.countryId == 233*/,
                              child: SizedBox(
                                height: 20.h,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: "I have Interest in,",
                                style: TextStyle(
                                    color: AppColor.appTextColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            MultiSelectContainer(
                                maxSelectableCount: 0,
                                textStyles: MultiSelectTextStyles(
                                    textStyle: TextStyle(
                                  color: AppColor.appTextColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                )),
                                itemsDecoration: MultiSelectDecorations(
                                  decoration: BoxDecoration(
                                    color: AppColor.appTextColor.withAlpha(20),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                items: [
                                  MultiSelectCard(
                                      value: 'Water sports',
                                      label: 'Water sports'),
                                  MultiSelectCard(
                                      value: 'Scuba diving',
                                      label: 'Scuba diving'),
                                  MultiSelectCard(
                                    value: 'Boating',
                                    label: 'Boating',
                                  ),
                                ],
                                onChange: (allSelectedItems, selectedItem) {}),
                            SizedBox(
                              height: 18.h,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(204, 249, 251, 1)),
                            color: AppColor.lightAquaColor),
                        height: 0.50.sh,
                        width: ScreenUtil().screenWidth,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 15.w, right: 15.w, top: 5.h, bottom: 5.h),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text("Trips",
                                        style: TextStyle(
                                            color: AppColor.appTextColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      // backgroundColor: Colors.red,
                                      foregroundColor: AppColor.appTextColor,
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        // txtAlignment: TextAlign.right
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text('View All'),
                                  )
                                ],
                              ),
                              Flexible(
                                child: GridView.builder(
                                  scrollDirection: Axis.horizontal,
                                  clipBehavior: Clip.none,
                                  gridDelegate:
                                      new SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 1,
                                          childAspectRatio:
                                              (ScreenUtil().screenWidth / 0.6) /
                                                  (ScreenUtil().screenHeight /
                                                      1.4),
                                          crossAxisSpacing: 2.0,
                                          mainAxisSpacing: 12.0),
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      child: Column(children: [
                                        Card(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            elevation: 2.0,
                                            shadowColor: AppColor.blackColor
                                                .withOpacity(0.7),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Stack(
                                                  alignment:
                                                      AlignmentDirectional
                                                          .topCenter,
                                                  fit: StackFit.loose,
                                                  children: <Widget>[
                                                    SizedBox(
                                                      child: Image.asset(
                                                        'images/ic_user_image_.png',
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: InkWell(
                                                            splashColor: AppColor
                                                                .transparentColor,
                                                            onTap: () {},
                                                            child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        8.0),
                                                                child:
                                                                    Image.asset(
                                                                  index % 2 == 0
                                                                      ? 'images/ic_Unfavourite.png'
                                                                      : 'images/ic_favourite.png',
                                                                  height: 15.h,
                                                                  width: 15.h,
                                                                ))))
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 15.h,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 10.0,
                                                    right: 10.0,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 12.0,
                                                        backgroundImage:
                                                            NetworkImage(
                                                                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                                                        backgroundColor: AppColor
                                                            .transparentColor,
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Text(
                                                        "Adam Jane",
                                                        style: TextStyle(
                                                          color: AppColor
                                                              .appTextColor,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Text(
                                                    "At vero eos et accusamus et iusto odio dignissimos  ...",
                                                    style: TextStyle(
                                                      color:
                                                          AppColor.appTextColor,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
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
                      ),
                      SizedBox(height: 24.h),
                      Container(
                        height: 300.h,
                        width: ScreenUtil().screenWidth,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Photos & Videos",
                                  style: TextStyle(
                                      color: AppColor.appTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
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
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      child: Column(children: [
                                        Card(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            elevation: 2.0,
                                            shadowColor: AppColor.blackColor
                                                .withOpacity(0.7),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Stack(
                                                  alignment:
                                                      AlignmentDirectional
                                                          .topCenter,
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
                ))
              ]),
        ));
  }

  void _showBackgroundCheckBottomSheet() {
    Get.bottomSheet(
        Container(
          height: 0.43.sh,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 30.h),
                Text(
                  'strPerformBackgroundCheck'.tr,
                  style: TextStyle(
                      color: AppColor.appTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 25.h),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore e.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.appTextColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      child: Obx(() {
                        return IconButton(
                          icon: Icon(
                            controller.isTermsSelected.isTrue
                                ? Icons.radio_button_checked
                                : Icons.radio_button_unchecked,
                            color: controller.isTermsSelected.isTrue
                                ? AppColor.appSelectedRadioBtnColor
                                : AppColor.appBtnTextColor,
                          ),
                          onPressed: () {
                            controller.btnTermsCondition();
                          },
                        );
                      }),
                    ),
                    SizedBox(
                      child: RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: 'strAgreeTo'.tr,
                            style: TextStyle(
                                color: AppColor.appBtnTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                            text: 'strTerms&Condition'.tr,
                            style: TextStyle(
                                color: AppColor.blackColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        width: 0.38.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColor.whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: AppColor.appBtnBgColor, spreadRadius: 1),
                          ],
                        ),
                        padding: EdgeInsets.all(15.w),
                        child: Text(
                          'btnCancel'.tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColor.appBtnBgColor, fontSize: 16),
                        ),
                      ),
                      onTap: () {
                        Get.back();
                      },
                    ),
                    SizedBox(width: 20.w),
                    InkWell(
                      child: Container(
                        width: 0.38.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColor.appBtnBgColor,
                          boxShadow: [
                            BoxShadow(
                                color: AppColor.appBtnBgColor, spreadRadius: 1),
                          ],
                        ),
                        padding: EdgeInsets.all(15.w),
                        child: Text(
                          'btnCheck'.tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColor.whiteColor, fontSize: 16),
                        ),
                      ),
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        elevation: 20.0,
        enableDrag: false,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        )));
  }
}
