import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final Widget trailingWidget;
  const MyAppBar({
    Key? key,
    required this.title,
    this.trailingWidget = const SizedBox(height: 0, width: 0,),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 19.85.h,
                width: 22.6.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/backArrow.png'),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 9.4.w,
            ),
            Text(
              title,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: ColorConstants.appBlack1,
                ),
              ),
            ),
          ],
        ),
        trailingWidget,
        
      ],
    );
  }
}
