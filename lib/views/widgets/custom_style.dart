import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';

class CustomStyle extends StatelessWidget {
  final String imageString;
  final String text;
  final double height;
  final double width;
  final double gap;
  const CustomStyle({
    Key? key,
    required this.imageString,
    required this.text,
    required this.height,
    required this.width,
    required this.gap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageString),
            ),
          ),
        ),
        SizedBox(height: gap),
        Text(
          text,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13.sp,
              color: ColorConstants.appWhite,
            ),
          ),
        ),
      ],
    );
  }
}