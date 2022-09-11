import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';

class Position extends StatelessWidget {
  final bool condition;
  final String imageString;
  final String position;
  const Position({
    Key? key,
    required this.condition,
    required this.imageString,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 74.w,
      padding: EdgeInsets.only(
        top: 2.h,
        bottom: 5.h,
        right: 2.w,
        left: 2.w,
      ),
      decoration: BoxDecoration(
        color: condition ? ColorConstants.appRed : ColorConstants.appWhite,
        boxShadow: [
          BoxShadow(
            color: ColorConstants.appShadow,
            offset: Offset(3.w, 3.h),
            blurRadius: 6.r,
            spreadRadius: 2.r,
          ),
        ],
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstants.appWhite,
        ),
        child: Column(
          children: [
            Image.asset(
              imageString,
              fit: BoxFit.fill,
              width: 62.w,
              height: 49.h,
            ),
            SizedBox(height: 6.h),
            Text(
              position,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp,
                  color: ColorConstants.appRed,
                  letterSpacing: 0.2.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
