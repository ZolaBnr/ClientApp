import 'package:flutter/material.dart';
import 'package:untitled4/common/widgets/profile/profile_menu.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/sections/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../utils/constants/colors.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: Images.user5, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change profile picture'),
                    ),
                  ],
                ),
              ),
              /// Details
              const SizedBox(height: Sizes.spaceBtwItems / 2),
              const Divider(),
             const SizedBox(height:Sizes.spaceBtwItems ),

              /// Heading Profile Info
              /// Profile Information
            const TSectionHeading(title: 'Profile information', showActionButton: false),
            const SizedBox(height: Sizes.spaceBtwItems),
            TProfileMenu(title: 'Name', value: 'Lakhdarezzine Hanaa', onPressed: () {}),
              TProfileMenu(title: 'Username', value: 'HanaaLz24', onPressed: () {}),



            const SizedBox(height: Sizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: Sizes.spaceBtwItems),

              /// Personal Information

              const TSectionHeading(title: 'Personal information', showActionButton: false),
              TProfileMenu(title: 'E-mail', value: 'hanaalz128@gmail.com', onPressed: () {}),
              TProfileMenu(title: 'Numéro de téléphone', value: '+213673440121', onPressed: () {}),
              TProfileMenu(title: 'Address', value: 'Prince Abdelkader street,Arib city, Ain Defla state,ALGERIA', onPressed: () {}),

              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account',style:TextStyle(color: TColors.error)),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
