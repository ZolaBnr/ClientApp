
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../home_menu.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';


class LoginForm extends StatelessWidget {


  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Sizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(
                  Iconsax.direct), labelText: Texts.email),
            ),
            const SizedBox(height: Sizes.spaceBtwinputField),

            /// password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: Texts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwinputField / 2),

            /// Remember Me
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(Texts.rememberMe),
                  ],
                ),

              ],
            ),
            const SizedBox(height: Sizes.spaceBtwSections),

            /// Sing In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                 onPressed: () =>Get.to(()=> const HomeMenu()) ,
                child: const Text(Texts.signIn),
              ),
            ),



          ],
        ),
      ),
    );
  }
}