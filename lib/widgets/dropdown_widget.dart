import 'package:basic_intigration_with_bloc/constants/app_colors.dart';
import 'package:basic_intigration_with_bloc/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownFormWidget extends StatelessWidget {
  const DropDownFormWidget({
    Key? key,
    required this.context,
    required this.list,
    required this.selectedValue,
    required this.onChanged,
    this.readOnly = false,
    this.isRounded = true,
    this.dropdownColor = AppColors.whiteColor,
    this.textColor = AppColors.textDarkGreyColor,
    this.optionSelectColor = AppColors.textDarkGreyColor,
    required this.hintText,
    this.validator,
  }) : super(key: key);

  final BuildContext context;
  final List<String> list;
  final String selectedValue;
  final Function onChanged;
  final bool readOnly;
  final bool isRounded;
  final Color dropdownColor;
  final Color textColor;
  final Color optionSelectColor;
  final String hintText;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        fillColor: AppColors.backgroundColor,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.red),
        ),
      ),
      elevation: 1,
      dropdownColor: AppColors.backgroundColor,
      isExpanded: true,
      hint: Text(hintText),
      iconSize: 30,
      validator: validator,
      iconEnabledColor: AppColors.borderColor,
      icon: const Icon(
        Icons.arrow_drop_down_sharp,
        size: 25,
      ),
      items: list.map((String value) {
        return DropdownMenuItem(
          value: value,
          child: TextWidget(
            text: value,
            color: textColor,
            fontSize: 17.sp,
          ),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext context) {
        return list.map<Widget>(
          (String value) {
            return TextWidget(
                text: value, fontSize: 18.sp, color: optionSelectColor);
          },
        ).toList();
      },
      onChanged: (value) {
        onChanged(value);
      },
    );
  }
}
