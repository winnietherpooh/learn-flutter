import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cart/views/cart_view.dart';
import '../../home/views/home_view.dart';
import '../../user/views/user_view.dart';

class TabsController extends GetxController {
  //TODO: Implement TabsController

  RxInt currentIndex = 0.obs; //新建一个变量，用于监听哪一个被选中
  PageController pageController = PageController(initialPage: 0);
  final List<Widget> pages = const [
    HomeView(),
    CartView(),
    UserView(),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  /// 更新被选中的值
  void setCurrentIndex(index){
    currentIndex.value = index;
    update();
  }
}
