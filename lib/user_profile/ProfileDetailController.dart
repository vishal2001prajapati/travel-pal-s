import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileDetailController extends GetxController
    with GetTickerProviderStateMixin, StateMixin {
  var lastStatus = true.obs;
  late ScrollController scrollController;
  RxBool isTermsSelected = false.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollController.addListener(scrollListener);
  }

  bool get isShrink {
    return scrollController.hasClients &&
        scrollController.offset < (0.33.sh - kToolbarHeight);
  }

  scrollListener() {
    if (isShrink != lastStatus) {
      lastStatus.value = isShrink;
      change(lastStatus);
    }
  }

  void btnTermsCondition() {
    isTermsSelected.toggle();
    change(isTermsSelected);
  }
}
