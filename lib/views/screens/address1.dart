import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masnikkasneaker/constants/color_constants.dart';
import 'package:masnikkasneaker/constants/my_constants.dart';

import '../widgets/my_app_bar.dart';

class Address1 extends StatelessWidget {
  const Address1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.appWhite,
        elevation: 1.5,
        title: const MyAppBar(
          title: 'Address',
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          MyConstants.addresses.isEmpty
              ? SizedBox(
                  height: 13.h,
                  width: 0.w,
                )
              : Expanded(
                  flex: MyConstants.addresses.length,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: MyConstants.addresses.length,
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right: 20.w,
                        top: 19.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            MyConstants.addresses[index]['Name'],
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: ColorConstants.appBlack1,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 340.w,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        MyConstants.addresses[index]['Address'],
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp,
                                            color: ColorConstants.appBlack1,
                                            height: 2.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 31.h,
                                        width: 88.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13.r),
                                          color: ColorConstants.appRed,
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Remove',
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16.sp,
                                                color: ColorConstants.appWhite,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
          Flexible(child: SizedBox(height: 13.h)),
          Flexible(
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Text(
                      '+ Add Address',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.81.sp,
                          color: ColorConstants.appRed,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(child: SizedBox(height: 13.h)),
          Flexible(child: Divider(thickness: 1.h)),
        ],
      ),
    );
  }
}
