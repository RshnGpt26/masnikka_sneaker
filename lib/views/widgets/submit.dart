import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';

class Submit extends StatelessWidget {
  const Submit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.h,
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.r),
        color: ColorConstants.appRed,
      ),
      child: Center(
        child: Text(
          'Submit',
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
              color: ColorConstants.appWhite,
            ),
          ),
        ),
      ),
    );
  }
}