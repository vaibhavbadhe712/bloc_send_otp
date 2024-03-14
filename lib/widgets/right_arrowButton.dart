import 'package:basic_intigration_with_bloc/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RightArrowButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RightArrowButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.arrow_circle_right,
          size: 40.sp,
          color: AppColors.buttonBlueColor,
        ),
      ),
    );
  }
}
