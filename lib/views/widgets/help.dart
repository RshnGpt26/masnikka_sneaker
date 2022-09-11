import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masnikkasneaker/constants/color_constants.dart';

class Help extends StatelessWidget {
  final String imageString;
  final String title;
  const Help({
    Key? key, required this.imageString, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20.h,
          width: 20.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageString),
            ),
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          title,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: ColorConstants.appBlack1,
            ),
          ),
        ),
      ],
    );
  }
}