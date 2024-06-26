import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();


  /// Variables
  final PageController pageController = PageController();
  Rx<int> currentPageIndex =0.obs;
  /// Update Current Index when Page Scroll
  void updatePageIndicator(int index) => currentPageIndex.value=index;

  /// Jump to the specific dot selected page.
  void dotNavigationClick(int index) {
    currentPageIndex.value=index;
    pageController.jumpTo(index as double);
  }

  /// Update Current Index & jump to next page
  void nextPage() {
  if (currentPageIndex.value==1){
    Get.offAll(const LoginScreen());
  }else{
    int page= currentPageIndex.value+1;
    pageController.jumpToPage(page);
  }
  }

  /// Update Current Index & jump to the last Page
  void skipPage() {
    currentPageIndex.value=2;
    pageController.jumpToPage(2);
  }
}
