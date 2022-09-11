import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';

class MyTextField1 extends StatelessWidget {
  const MyTextField1({
    Key? key,
    required this.controller,
    required this.keyboardType,
    this.textInputAction = TextInputAction.next,
    required this.hintText,
    this.limit = 0, this.textCapitalization = TextCapitalization.words,
  }) : super(key: key);

  final TextEditingController controller;
  final TextCapitalization textCapitalization;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String hintText;
  final int limit;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      cursorColor: ColorConstants.appHint,
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
      inputFormatters: limit == 0
          ? null
          : <TextInputFormatter>[
              LengthLimitingTextInputFormatter(limit),
            ],
    );
  }
}
