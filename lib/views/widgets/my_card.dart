import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masnikkasneaker/constants/color_constants.dart';

class MyCard extends StatelessWidget {
  final Widget child;
  final double height;
  const MyCard({
    Key? key,
    required this.child,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 362.w,
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
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
      ),
      child: child,
    );
  }
}
