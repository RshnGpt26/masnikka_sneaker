import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masnikkasneaker/constants/color_constants.dart';

import '../widgets/help.dart';
import '../widgets/my_card.dart';
import '../widgets/my_detail.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: 390.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 21.h,
              ),
              Container(
                height: 96.h,
                width: 96.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                  vertical: 5.h,
                ),
                decoration: BoxDecoration(
                  color: ColorConstants.appRed,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  height: 87.h,
                  width: 87.w,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/person.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Text(
                'Hii Peter',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 23.sp,
                    color: ColorConstants.appRed,
                  ),
                ),
              ),
              title('Help'),
              SizedBox(
                height: 15.h,
              ),
              MyCard(
                height: 141.h,
                child: Column(
                  children: [
                    SizedBox(height: 5.h),
                    InkWell(
                      onTap: () {},
                      child: const Help(
                        imageString: 'assets/images/qa.png',
                        title: 'FAQs',
                      ),
                    ),
                    Divider(thickness: 1.h),
                    SizedBox(height: 5.h),
                    InkWell(
                      onTap: () {},
                      child: const Help(
                        imageString: 'assets/images/video.png',
                        title: 'How to Videos',
                      ),
                    ),
                    Divider(thickness: 1.h),
                    SizedBox(height: 5.h),
                    InkWell(
                      onTap: () {},
                      child: const Help(
                        imageString: 'assets/images/contactSupport.png',
                        title: 'Contact Support',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              title('My Details'),
              SizedBox(height: 15.h),
              MyCard(
                height: 183.h,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const MyDetail(
                        title: 'My orders',
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(thickness: 1.h),
                    SizedBox(height: 5.h),
                    InkWell(
                      onTap: () {},
                      child: const MyDetail(
                        title: 'My Designs',
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(thickness: 1.h),
                    SizedBox(height: 5.h),
                    InkWell(
                      onTap: () {},
                      child: const MyDetail(
                        title: 'My cart',
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(thickness: 1.h),
                    SizedBox(height: 5.h),
                    InkWell(
                      onTap: () {},
                      child: const MyDetail(
                        title: 'My Address',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              title('About'),
              SizedBox(height: 15.h),
              MyCard(
                height: 99.h,
                child: Column(
                  children: [
                    SizedBox(height: 5.h),
                    InkWell(
                      onTap: () {},
                      child: const Help(
                        imageString: 'assets/images/Exclude.png',
                        title: 'About Masnikka sneakers',
                      ),
                    ),
                    Divider(thickness: 1.h),
                    SizedBox(height: 5.h),
                    InkWell(
                      onTap: () {},
                      child: const Help(
                        imageString: 'assets/images/star.png',
                        title: 'Leave a review',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding title(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Row(
        children: [
          Text(
            text,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: ColorConstants.appBlack1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
