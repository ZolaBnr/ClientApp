import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:untitled4/features/repair/Chats/screen/home_screen.dart';
import 'package:untitled4/utils/constants/colors.dart';
import 'package:untitled4/utils/helpers/helper_functions.dart';
import 'features/personalisation/screens/settings/settings.dart';
import 'features/repair/chats/screen/chat_screen.dart'; // Corrected import path
import 'features/repair/notifications/notification.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key); // Fixed constructor syntax

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
          controller.selectedIndex.value = index,
          backgroundColor: dark ? TColors.black : Colors.white,
          indicatorColor: dark
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.notification), label: 'Notifications'),
            NavigationDestination(icon: Icon(Iconsax.message), label: 'Chat'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Notifications(),
    const HomeScreen(), // Corrected instantiation
    const SettingScreen(),
  ];
}
