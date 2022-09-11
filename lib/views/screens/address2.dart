import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';
import '../widgets/my_app_bar.dart';
import '../widgets/my_text_field1.dart';

class Address2 extends StatefulWidget {
  const Address2({Key? key}) : super(key: key);

  @override
  State<Address2> createState() => _Address2State();
}

bool checkedValue = false;

class _Address2State extends State<Address2> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController name1 = TextEditingController();
    final TextEditingController phone1 = TextEditingController();
    final TextEditingController email1 = TextEditingController();
    final TextEditingController country1 = TextEditingController();
    final TextEditingController city1 = TextEditingController();
    final TextEditingController zip1 = TextEditingController();
    final TextEditingController address11 = TextEditingController();
    final TextEditingController address12 = TextEditingController();
    final TextEditingController address13 = TextEditingController();
    final TextEditingController name2 = TextEditingController();
    final TextEditingController phone2 = TextEditingController();
    final TextEditingController email2 = TextEditingController();
    final TextEditingController country2 = TextEditingController();
    final TextEditingController city2 = TextEditingController();
    final TextEditingController zip2 = TextEditingController();
    final TextEditingController address21 = TextEditingController();
    final TextEditingController address22 = TextEditingController();
    final TextEditingController address23 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.appWhite,
        elevation: 1.5,
        title: const MyAppBar(
          title: 'Add delivery address',
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                'Shipping Address',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: ColorConstants.appBlack2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Divider(thickness: 2.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 21.h,
              ),
              child: Column(
                children: [
                  MyTextField1(
                    controller: name1,
                    keyboardType: TextInputType.text,
                    hintText: 'Full Name',
                  ),
                  SizedBox(height: 20.h),
                  MyTextField1(
                    controller: phone1,
                    keyboardType: TextInputType.number,
                    hintText: 'Phone Number',
                    limit: 10,
                  ),
                  SizedBox(height: 20.h),
                  MyTextField1(
                    controller: email1,
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'E-Mail Address',
                    textCapitalization: TextCapitalization.none,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 170.w,
                        child: MyTextField1(
                          controller: country1,
                          keyboardType: TextInputType.text,
                          hintText: 'Country',
                        ),
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: 170.w,
                        child: MyTextField1(
                          controller: city1,
                          keyboardType: TextInputType.text,
                          hintText: 'City',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 170.w,
                        child: MyTextField1(
                          controller: zip1,
                          keyboardType: TextInputType.text,
                          hintText: 'Zip Code',
                        ),
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: 170.w,
                        child: MyTextField1(
                          controller: address11,
                          keyboardType: TextInputType.text,
                          hintText: 'Shipping Address',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  MyTextField1(
                    controller: address12,
                    keyboardType: TextInputType.streetAddress,
                    hintText: 'House no., Building name',
                  ),
                  SizedBox(height: 20.h),
                  MyTextField1(
                    controller: address13,
                    keyboardType: TextInputType.streetAddress,
                    textInputAction: TextInputAction.done,
                    hintText: 'Road no., Area, Colony',
                  ),
                  CheckboxListTile(
                    checkColor: ColorConstants.appWhite,
                    activeColor: ColorConstants.appRed,
                    title: Text(
                      "Same as Shipping Address",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.sp,
                          color: ColorConstants.appHint,
                        ),
                      ),
                    ),
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ],
              ),
            ),
            // Next
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                'Billing Address',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: ColorConstants.appBlack2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Divider(thickness: 2.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 21.h,
              ),
              child: Column(
                children: [
                  MyTextField1(
                    controller: name2,
                    keyboardType: TextInputType.text,
                    hintText: 'Full Name',
                  ),
                  SizedBox(height: 20.h),
                  MyTextField1(
                    controller: phone2,
                    keyboardType: TextInputType.number,
                    hintText: 'Phone Number',
                    limit: 10,
                  ),
                  SizedBox(height: 20.h),
                  MyTextField1(
                    controller: email2,
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'E-Mail Address',
                    textCapitalization: TextCapitalization.none,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 170.w,
                        child: MyTextField1(
                          controller: country2,
                          keyboardType: TextInputType.text,
                          hintText: 'Country',
                        ),
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: 170.w,
                        child: MyTextField1(
                          controller: city2,
                          keyboardType: TextInputType.text,
                          hintText: 'City',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 170.w,
                        child: MyTextField1(
                          controller: zip2,
                          keyboardType: TextInputType.text,
                          hintText: 'Zip Code',
                        ),
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: 170.w,
                        child: MyTextField1(
                          controller: address21,
                          keyboardType: TextInputType.text,
                          hintText: 'Shipping Address',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  MyTextField1(
                    controller: address22,
                    keyboardType: TextInputType.streetAddress,
                    hintText: 'House no., Building name',
                  ),
                  SizedBox(height: 20.h),
                  MyTextField1(
                    controller: address23,
                    keyboardType: TextInputType.streetAddress,
                    textInputAction: TextInputAction.done,
                    hintText: 'Road no., Area, Colony',
                  ),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50.h,
                      width: 270.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.r),
                        color: ColorConstants.appRed,
                      ),
                      child: Center(
                        child: Text(
                          'Save Address',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18.sp,
                              color: ColorConstants.appWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
