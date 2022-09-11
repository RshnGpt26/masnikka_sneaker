import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masnikkasneaker/constants/color_constants.dart';

class MyDetail extends StatelessWidget {
  final String title;
  const MyDetail({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
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
        Padding(
          padding: EdgeInsets.only(right: 22.17.w),
          child: Icon(
            Icons.arrow_forward_ios,
            size: 15.sp,
          ),
        )
      ],
    );
  }
}
