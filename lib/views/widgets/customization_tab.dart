import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';

class CustomizationTab extends StatelessWidget {
  final String imageString;
  final String text;
  final bool condition;
  const CustomizationTab({
    Key? key,
    required this.imageString,
    required this.text,
    required this.condition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(bottom: 7.h),
      width: 45.w,
      decoration: BoxDecoration(
        color: ColorConstants.appRed,
        border: condition
            ? Border(
                top: BorderSide(
                  width: 2.h,
                  color: ColorConstants.appWhite,
                ),
              )
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 28.7.h,
            width: 28.5.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageString),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 7.25.h),
          Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13.sp,
                color: ColorConstants.appWhite,
                letterSpacing: 0.2.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}