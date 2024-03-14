import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;

  // ignore: prefer_const_constructors_in_immutables
  SizedBoxWidget({
    super.key,
   this.width,
   this.height,
   this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }
}