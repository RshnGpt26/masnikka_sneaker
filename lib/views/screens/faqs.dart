import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masnikkasneaker/constants/color_constants.dart';
import 'package:masnikkasneaker/constants/my_constants.dart';

import '../widgets/my_app_bar.dart';

class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  State<FAQs> createState() => _FAQsState();
}

int flag = 0;
List faqState = <bool>[];

class _FAQsState extends State<FAQs> {
  @override
  void initState() {
    for (var element = 0; element <= MyConstants.qa.length; element++) {
      if (element == 0) {
        faqState.add(true);
      } else {
        faqState.add(false);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.appWhite,
        elevation: 1.5,
        title: const MyAppBar(
          title: 'FAQs',
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 19.h),
          Container(
            height: 40.h,
            width: 390.w,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: ColorConstants.appBack,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                'Frequently Asked Questions',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    color: ColorConstants.appBlack1,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 19.h),
          SizedBox(
            height: 670.h,
            width: 390.w,
            child: ListView.builder(
              itemCount: MyConstants.qa.length,
              itemBuilder: (BuildContext context, int index) => InkWell(
                onTap: () {
                  if (flag == index) {
                    setState(() {
                      faqState[index] = false;
                      flag = MyConstants.qa.length + 1;
                    });
                  } else {
                    setState(() {
                      faqState[index] = true;
                      flag = index;
                    });
                  }
                },
                child: Column(
                  children: [
                    Divider(thickness: 1.h),
                    Padding(
                      padding: EdgeInsets.only(left: 25.w, right: 22.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyConstants.qa[index]['Q'],
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: ColorConstants.appBlack1,
                              ),
                            ),
                          ),
                          Icon(
                            flag == index && faqState[index]
                                ? Icons.keyboard_arrow_up_outlined
                                : Icons.keyboard_arrow_down_outlined,
                            size: 25.sp,
                            color: ColorConstants.appBlack1,
                          ),
                        ],
                      ),
                    ),
                    flag == index && faqState[index]
                        ? Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(thickness: 1.h),
                                SizedBox(
                                  width: 304.w,
                                  child: Text(
                                    MyConstants.qa[index]['A'],
                                    style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14.sp,
                                        color: ColorConstants.appBlack1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SizedBox(
                            height: 0.h,
                            width: 0.w,
                          ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
