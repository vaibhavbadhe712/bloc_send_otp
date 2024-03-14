import 'package:basic_intigration_with_bloc/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackArrowButton extends StatelessWidget {
  final VoidCallback onPressed;

  const BackArrowButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.arrow_circle_left,
        size: 40.sp,
        color: AppColors.buttonBlueColor,
      ),
    );
  }
}
