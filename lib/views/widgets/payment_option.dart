import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masnikkasneaker/constants/color_constants.dart';

class PaymentOption extends StatelessWidget {
  final String title;
  final String imageString;
  const PaymentOption({
    Key? key,
    required this.title,
    required this.imageString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.left,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: ColorConstants.appBlack1,
            ),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          height: 53.h,
          width: 261.w,
          decoration: BoxDecoration(
            color: ColorConstants.appWhite,
            borderRadius: BorderRadius.circular(13.r),
            boxShadow: [
              BoxShadow(
                color: ColorConstants.appShadow,
                offset: Offset(2.w, 2.h),
                blurRadius: 4.r,
                spreadRadius: 1.r,
              ),
            ],
            image: DecorationImage(
              image: AssetImage(imageString),
            ),
          ),
        ),
      ],
    );
  }
}
