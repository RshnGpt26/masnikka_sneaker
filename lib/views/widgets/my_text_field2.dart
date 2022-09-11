import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';

class MyTextField2 extends StatelessWidget {
  const MyTextField2({
    Key? key,
    required this.height,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  final double height;
  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextField(
        controller: controller,
        textCapitalization: TextCapitalization.sentences,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        cursorColor: ColorConstants.appHint,
        maxLines: height ~/ 20,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.inter(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 11.sp,
              color: ColorConstants.appHint,
            ),
          ),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 13.w,
            vertical: 18.h,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstants.appBlack1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstants.appBlack1,
            ),
          ),
        ),
      ),
    );
  }
}