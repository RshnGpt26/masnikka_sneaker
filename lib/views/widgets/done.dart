import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';

class Done extends StatelessWidget {
  final Function callBack;
  const Done({
    Key? key,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 77.w,
      height: 31.h,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.r),
            ),
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: 6.h,
              horizontal: 18.w,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            ColorConstants.appRed,
          ),
        ),
        onPressed: () {
          callBack();
        },
        child: Text(
          'Done',
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: ColorConstants.appWhite,
              letterSpacing: 0.2.w,
            ),
          ),
        ),
      ),
    );
  }
}