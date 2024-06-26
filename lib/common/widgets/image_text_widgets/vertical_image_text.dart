import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';


class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor=TColors.white,
    this.backgroundColor=TColors.white,
    this.onTap,
  });
  final String image,title;
  final Color? textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark=HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap:onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: Sizes.spaceBtwItems),
        child: Column(
          children: [
            /// Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(Sizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark? TColors.black :TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child:  Center(
                child: Image(image: AssetImage(image),fit: BoxFit.cover,color: TColors.dark),
              ),
            ),
      
            /// Text
            const SizedBox(height: Sizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                'Add new order',
                style: Theme.of(context).textTheme.labelMedium! .apply(color: TColors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}