import 'package:get/get.dart';

import '../../cart/controllers/cart_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../../user/controllers/user_controller.dart';
import '../controllers/tabs_controller.dart';

class TabsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(
      () => TabsController(),
    );
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );
    Get.lazyPut<CartController>(
          () => CartController(),
    );
    Get.lazyPut<UserController>(
          () => UserController(),
    );
  }
}
