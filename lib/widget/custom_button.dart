import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final Color? backgroundColor, titleColor, borderColor;
  const CustomButton({
    super.key, required this.buttonTitle, this.backgroundColor, this.titleColor, this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 120.w,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5),
        border: Border.all(color: borderColor?? Colors.transparent)
      ),
      child: Center(child: Text("$buttonTitle", style: TextStyle(fontSize: 14, color: titleColor, fontWeight: FontWeight.w400),),),
    );
  }
}