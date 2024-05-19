import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:iconsax/iconsax.dart';

import '../home_menu.dart';
import 'constants/colors.dart';
import 'helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu ({super.key});

  @override
  Widget build(BuildContext context){
    final controller =Get.put(NavigationController());
    final darkMode =HelperFunctions.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar : Obx(
                () => NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) => controller.selectedIndex.value=index,
              backgroundColor: darkMode ? TColors.black : Colors.white,
              indicatorColor: darkMode ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
              destinations:const  [
                NavigationDestination(icon: Icon(Iconsax.notification), label:'Notifcations'),
                NavigationDestination(icon: Icon(Iconsax.notification), label:'Notifcations'),
              ],

            )
        )
    );
  }
}