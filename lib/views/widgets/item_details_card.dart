import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masnikkasneaker/constants/color_constants.dart';

class ItemDetailsCard extends StatelessWidget {
  const ItemDetailsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108.h,
      width: 362.w,
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.r),
        color: ColorConstants.appWhite,
        boxShadow: [
          BoxShadow(
            color: ColorConstants.appShadow,
            offset: Offset(2.w, 2.h),
            blurRadius: 4.r,
            spreadRadius: 1.r,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 8.w,
        ),
        child: Row(
          children: [
            Container(
              height: 92.h,
              width: 92.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                image: const DecorationImage(
                  image: AssetImage('assets/images/shoes.png'),
                ),
              ),
            ),
            SizedBox(
              width: 13.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Nike Shoes printed',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                      color: ColorConstants.appBlack1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  '\$ 290',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      color: ColorConstants.appBlack1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Size : 6',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.49.sp,
                      color: ColorConstants.appBlack1,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
