import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children : [
        Container (
          decoration : BoxDecoration ( border : Border.all ( color : TColors.grey ) , borderRadius : BorderRadius.circular ( 100 )),
          child : IconButton (
            onPressed : ( ) { } ,
            icon : const Image (
              width : Sizes.iconMd ,
              height : Sizes.iconMd ,
              image : AssetImage ('assets/logos/google-icon.png') ,
            ),
          ),
        ),
        const SizedBox(width: Sizes.spaceBtwItems),

        Container (
          decoration : BoxDecoration ( border : Border.all ( color : TColors.grey ) , borderRadius : BorderRadius.circular ( 100 )),
          child : IconButton (
            onPressed : ( ) { } ,
            icon : const Image (
              width : Sizes.iconMd ,
              height : Sizes.iconMd ,
              image : AssetImage ('assets/logos/facebook-icon.png') ,

            ),
          ),
        ),
      ],
    );
  }
}