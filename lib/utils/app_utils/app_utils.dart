import 'package:basic_intigration_with_bloc/constants/app_enums.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../constants/app_images copy.dart';


String fetchIconFromAsset(assetName) {
  if (assetName == AppIcons.baapLogo.name) {
    return AppImages.logoImage;
    // } else if (assetName == AppIcons.add.name) {
    //   return AppImages.addIcon;
  } else {
    return "";
  }
}

bool isPhoneScreen(BuildContext context) {
  return ResponsiveBreakpoints.of(context).smallerThan(TABLET);
}

bool isTabletScreen(BuildContext context) {
  return ResponsiveBreakpoints.of(context).largerThan(MOBILE) &&
      ResponsiveBreakpoints.of(context).smallerThan(DESKTOP);
}

bool isDesktopScreen(BuildContext context) {
  return ResponsiveBreakpoints.of(context).largerThan(TABLET);
}
