import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tabs_controller.dart';

class TabsView extends GetView<TabsController> {
  const TabsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: controller.pages,
        onPageChanged: (index){
          controller.setCurrentIndex(index);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        currentIndex: controller.currentIndex.value, //第几个菜单选中
        type: BottomNavigationBarType.fixed, //如果有4个或者4个以上的
        onTap: (index) {
          controller.setCurrentIndex(index);
          controller.pageController.jumpToPage(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "购物车",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "用户",
          ),
        ],
      ),
    ));
  }
}
