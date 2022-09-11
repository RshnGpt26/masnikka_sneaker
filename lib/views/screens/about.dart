import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masnikkasneaker/constants/my_constants.dart';

import '../../constants/color_constants.dart';
import '../widgets/my_app_bar.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.appWhite,
        elevation: 1.5,
        title: const MyAppBar(
          title: 'Add delivery address',
        ),
      ),
      body: ListView.builder(
        itemCount: MyConstants.about.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(
            left: 25.w,
            right: 25.w,
            top: 23.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MyConstants.about[index]['Title'],
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: ColorConstants.appBlack1,
                  ),
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                MyConstants.about[index]['Desc'],
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: ColorConstants.appBlack1,
                    height: 1.8.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
