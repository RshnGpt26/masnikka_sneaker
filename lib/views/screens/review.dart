import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';
import '../widgets/my_app_bar.dart';
import '../widgets/my_text_field2.dart';
import '../widgets/submit.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController review = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.appWhite,
        elevation: 1.5,
        title: const MyAppBar(
          title: 'Review',
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 25.h,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Hello Sam!',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25.sp,
                        color: ColorConstants.appRed,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: 50.h,
                width: 350.w,
                child: Text(
                  'Write Your valuable Review to improve our Service.',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: ColorConstants.appBlack1,
                      height: 2.h,
                      letterSpacing: 0.8.w,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 38.h),
              MyTextField2(
                height: 143.h,
                controller: review,
                hintText: 'Write Your Review...',
              ),
              SizedBox(height: 36.h),
              InkWell(
                onTap: () {},
                child: const Submit(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
