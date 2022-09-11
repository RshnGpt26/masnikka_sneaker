import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masnikkasneaker/constants/my_constants.dart';
import 'package:masnikkasneaker/views/widgets/my_text_field1.dart';

import '../../constants/color_constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_style.dart';
import '../widgets/customization_tab.dart';
import '../widgets/done.dart';
import '../widgets/my_app_bar.dart';
import '../widgets/position.dart';

class Customization extends StatefulWidget {
  const Customization({super.key});

  @override
  State<Customization> createState() => _CustomizationState();
}

int selectedPosition = 0;
int? selectedColor;
int? selectedTextStyle;
var selectedCustomizationTab = 5;

class _CustomizationState extends State<Customization> {
  @override
  void initState() {
    super.initState();
    selectedColor = MyConstants.colors.length + 1;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.appWhite,
        elevation: 1.5,
        title: MyAppBar(
          title: 'Customization',
          trailingWidget: Done(
            callBack: () {
              complete();
            },
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  width: 50.w,
                  height: 50.h,
                  radius: 13.r,
                  verticalPadding: 16.h,
                  horizontalPadding: 14.w,
                  backColor: ColorConstants.appWhite,
                  callBack: undo,
                  child: Image.asset(
                    'assets/images/undo.png',
                    fit: BoxFit.fill,
                    width: 22.w,
                    height: 18.h,
                  ),
                ),
                CustomButton(
                  width: 154.w,
                  height: 50.h,
                  radius: 13.r,
                  verticalPadding: 15.h,
                  horizontalPadding: 20.w,
                  backColor: ColorConstants.appWhite,
                  callBack: changeShoes,
                  child: Text(
                    'Change Shoes',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: ColorConstants.appRed,
                        letterSpacing: 0.2.w,
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  width: 50.w,
                  height: 50.h,
                  radius: 13.r,
                  verticalPadding: 16.h,
                  horizontalPadding: 14.w,
                  backColor: ColorConstants.appWhite,
                  callBack: delete,
                  child: Image.asset(
                    'assets/images/delete.png',
                    width: 22.w,
                    height: 22.h,
                  ),
                ),
              ],
            ),
          ),
          Divider(thickness: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedPosition = 0;
                  });
                },
                child: Position(
                  condition: selectedPosition == 0,
                  imageString: 'assets/images/left.png',
                  position: 'Left',
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedPosition = 1;
                  });
                },
                child: Position(
                  condition: selectedPosition == 1,
                  imageString: 'assets/images/right.png',
                  position: 'Right',
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedPosition = 2;
                  });
                },
                child: Position(
                  condition: selectedPosition == 2,
                  imageString: 'assets/images/front.png',
                  position: 'Front',
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedPosition = 3;
                  });
                },
                child: Position(
                  condition: selectedPosition == 3,
                  imageString: 'assets/images/back.png',
                  position: 'Back',
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Stack(
            children: [
              Image.asset(
                'assets/images/previewShoe.png',
                fit: BoxFit.fill,
                height: 339.h,
                width: 390.w,
              ),
              Positioned(
                right: 20.w,
                top: 20.h,
                child: Image.asset(
                  'assets/images/previewIcon.png',
                  fit: BoxFit.fill,
                  height: 33.h,
                  width: 33.w,
                ),
              ),
            ],
          ),
          selectedCustomizationTab == 0
              ? Container(
                  height: 144.h,
                  width: 350.w,
                  padding: EdgeInsets.only(
                    left: 19.w,
                    right: 19.w,
                    top: 12.h,
                  ),
                  margin: EdgeInsets.only(
                    bottom: 14.h,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstants.appWhite,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstants.appShadow,
                        offset: Offset(2.w, 2.h),
                        blurRadius: 4.r,
                        spreadRadius: 1.r,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Change Shoes Colour',
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp,
                                color: ColorConstants.appRed,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: 95.h,
                        child: GridView.count(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25.w,
                            vertical: 15.h,
                          ),
                          crossAxisCount: 5,
                          crossAxisSpacing: 31.w,
                          mainAxisSpacing: 15.h,
                          children: List.generate(
                            MyConstants.colors.length,
                            (index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedColor = index;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 2.w,
                                    vertical: 2.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstants.appWhite,
                                    shape: BoxShape.circle,
                                    border: selectedColor == index
                                        ? Border.all(
                                            color: ColorConstants.appBlack1,
                                          )
                                        : null,
                                  ),
                                  child: Container(
                                    height: 30.h,
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: MyConstants.colors[index],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : selectedCustomizationTab == 6
                  ? Column(
                      children: [
                        selectedTextStyle == 0 ||
                                selectedTextStyle == 1 ||
                                selectedTextStyle == null
                            ? Container(
                                height: 145.h,
                                width: 370.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(
                                    color: ColorConstants.appBlack1,
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 23.w),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'Layer',
                                              style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13.sp,
                                                  color: ColorConstants.appRed,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 70.w,
                                              height: 26.h,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/bilayer.png'),
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.h,
                                              color: ColorConstants.appBlack1,
                                            ),
                                            Text(
                                              'Photo',
                                              style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13.sp,
                                                  color: ColorConstants.appRed,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 70.w,
                                              height: 26.h,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/rotate.png'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 1.w,
                                              height: 41.h,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color:
                                                      ColorConstants.appBlack1,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 1.w,
                                              height: 41.h,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color:
                                                      ColorConstants.appBlack1,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'Center',
                                              style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13.sp,
                                                  color: ColorConstants.appRed,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 70.w,
                                              height: 26.h,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/center.png'),
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.h,
                                              color: ColorConstants.appBlack1,
                                            ),
                                            Text(
                                              'Flip',
                                              style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13.sp,
                                                  color: ColorConstants.appRed,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 70.w,
                                              height: 26.h,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/flip.png'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 1.w,
                                              height: 41.h,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color:
                                                      ColorConstants.appBlack1,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 1.w,
                                              height: 41.h,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color:
                                                      ColorConstants.appBlack1,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'Clone',
                                              style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13.sp,
                                                  color: ColorConstants.appRed,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 28.w,
                                              height: 28.h,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/clone.png'),
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.h,
                                              color: ColorConstants.appBlack1,
                                            ),
                                            Text(
                                              'Delete',
                                              style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13.sp,
                                                  color: ColorConstants.appRed,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 24.w,
                                              height: 24.h,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/delete1.png'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : selectedTextStyle == 6
                                ? SizedBox(
                                    height: 145.h,
                                    width: 390.w,
                                  )
                                : SizedBox(
                                    height: 145.h,
                                    width: 390.w,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: selectedTextStyle == 5
                                              ? 109.h
                                              : 70.h,
                                          width: 390.w,
                                          color: ColorConstants.appBlack3,
                                          child: selectedTextStyle == 2
                                              ? Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    CustomStyle(
                                                      imageString:
                                                          'assets/images/height.png',
                                                      text: 'Height',
                                                      height: 53.h,
                                                      width: 37.w,
                                                      gap: 0.h,
                                                    ),
                                                    CustomStyle(
                                                      imageString:
                                                          'assets/images/b.png',
                                                      text: 'Bold',
                                                      height: 53.h,
                                                      width: 37.w,
                                                      gap: 0.h,
                                                    ),
                                                    CustomStyle(
                                                      imageString:
                                                          'assets/images/I1.png',
                                                      text: 'Italic',
                                                      height: 53.h,
                                                      width: 37.w,
                                                      gap: 0.h,
                                                    ),
                                                    CustomStyle(
                                                      imageString:
                                                          'assets/images/U.png',
                                                      text: 'Underline',
                                                      height: 53.h,
                                                      width: 37.w,
                                                      gap: 0.h,
                                                    ),
                                                    CustomStyle(
                                                      imageString:
                                                          'assets/images/S.png',
                                                      text: 'Strike',
                                                      height: 53.h,
                                                      width: 37.w,
                                                      gap: 0.h,
                                                    ),
                                                  ],
                                                )
                                              : selectedTextStyle == 3
                                                  ? Row(
                                                      children: [
                                                        SizedBox(width: 13.w),
                                                        CustomStyle(
                                                          imageString:
                                                              'assets/images/solid.png',
                                                          text: 'Solid',
                                                          height: 30.h,
                                                          width: 30.w,
                                                          gap: 11.h,
                                                        ),
                                                        SizedBox(width: 29.w),
                                                        CustomStyle(
                                                          imageString:
                                                              'assets/images/block.png',
                                                          text: 'Block',
                                                          height: 30.h,
                                                          width: 30.w,
                                                          gap: 11.h,
                                                        ),
                                                        SizedBox(width: 29.w),
                                                        CustomStyle(
                                                          imageString:
                                                              'assets/images/photo.png',
                                                          text: 'Image',
                                                          height: 30.h,
                                                          width: 30.w,
                                                          gap: 11.h,
                                                        ),
                                                        SizedBox(width: 29.w),
                                                        CustomStyle(
                                                          imageString:
                                                              'assets/images/outline.png',
                                                          text: 'Outline',
                                                          height: 30.h,
                                                          width: 30.w,
                                                          gap: 11.h,
                                                        ),
                                                      ],
                                                    )
                                                  : selectedTextStyle == 4
                                                      ? Row(
                                                          children: [
                                                            SizedBox(
                                                                width: 13.w),
                                                            CustomStyle(
                                                              imageString:
                                                                  'assets/images/left1.png',
                                                              text: 'Left',
                                                              height: 30.h,
                                                              width: 30.w,
                                                              gap: 5.h,
                                                            ),
                                                            SizedBox(
                                                                width: 29.w),
                                                            CustomStyle(
                                                              imageString:
                                                                  'assets/images/center1.png',
                                                              text: 'Center',
                                                              height: 30.h,
                                                              width: 30.w,
                                                              gap: 5.h,
                                                            ),
                                                            SizedBox(
                                                                width: 29.w),
                                                            CustomStyle(
                                                              imageString:
                                                                  'assets/images/right1.png',
                                                              text: 'Right',
                                                              height: 30.h,
                                                              width: 30.w,
                                                              gap: 5.h,
                                                            ),
                                                            SizedBox(
                                                                width: 29.w),
                                                            CustomStyle(
                                                              imageString:
                                                                  'assets/images/space.png',
                                                              text: 'Space',
                                                              height: 30.h,
                                                              width: 30.w,
                                                              gap: 5.h,
                                                            ),
                                                          ],
                                                        )
                                                      : selectedTextStyle == 5
                                                          ? SingleChildScrollView(
                                                              scrollDirection:
                                                                  Axis.horizontal,
                                                              child: Row(
                                                                children: [
                                                                  SizedBox(
                                                                      width:
                                                                          25.w),
                                                                  CustomStyle(
                                                                    imageString:
                                                                        'assets/images/straight.png',
                                                                    text:
                                                                        'Straight',
                                                                    height:
                                                                        40.h,
                                                                    gap: 12.h,
                                                                    width: 40.w,
                                                                  ),
                                                                  SizedBox(
                                                                      width:
                                                                          42.w),
                                                                  CustomStyle(
                                                                    imageString:
                                                                        'assets/images/circle.png',
                                                                    text:
                                                                        'Circle',
                                                                    height:
                                                                        40.h,
                                                                    width: 40.w,
                                                                    gap: 12.h,
                                                                  ),
                                                                  SizedBox(
                                                                      width:
                                                                          42.w),
                                                                  CustomStyle(
                                                                    imageString:
                                                                        'assets/images/semi.png',
                                                                    text:
                                                                        'Semi',
                                                                    height:
                                                                        40.h,
                                                                    width: 40.w,
                                                                    gap: 12.h,
                                                                  ),
                                                                  SizedBox(
                                                                      width:
                                                                          42.w),
                                                                  CustomStyle(
                                                                    imageString:
                                                                        'assets/images/semi.png',
                                                                    text:
                                                                        'Semi',
                                                                    height:
                                                                        40.h,
                                                                    width: 40.w,
                                                                    gap: 12.h,
                                                                  ),
                                                                  SizedBox(
                                                                      width:
                                                                          42.w),
                                                                  CustomStyle(
                                                                    imageString:
                                                                        'assets/images/semi.png',
                                                                    text: 'Mid',
                                                                    height:
                                                                        40.h,
                                                                    width: 40.w,
                                                                    gap: 12.h,
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          : Row(),
                                        ),
                                      ],
                                    ),
                                  ),
                        SizedBox(height: 5.h),
                        Container(
                          height: 80.h,
                          width: 390.w,
                          decoration: BoxDecoration(
                            color: ColorConstants.appRed,
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(width: 24.5.w),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedTextStyle = 0;
                                    });
                                  },
                                  child: const CustomizationTab(
                                    imageString: 'assets/images/A.png',
                                    text: 'Font',
                                    condition: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 15.h,
                                    horizontal: 3.w,
                                  ),
                                  child: VerticalDivider(
                                    color: ColorConstants.appWhite,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedTextStyle = 1;
                                    });
                                  },
                                  child: const CustomizationTab(
                                    imageString: 'assets/images/color.png',
                                    text: 'Color',
                                    condition: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 15.h,
                                    horizontal: 3.w,
                                  ),
                                  child: VerticalDivider(
                                    color: ColorConstants.appWhite,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedTextStyle = 2;
                                    });
                                  },
                                  child: const CustomizationTab(
                                    imageString: 'assets/images/I.png',
                                    text: 'Style',
                                    condition: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 15.h,
                                    horizontal: 3.w,
                                  ),
                                  child: VerticalDivider(
                                    color: ColorConstants.appWhite,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedTextStyle = 3;
                                    });
                                  },
                                  child: const CustomizationTab(
                                    imageString: 'assets/images/fill.png',
                                    text: 'Fill',
                                    condition: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 15.h,
                                    horizontal: 3.w,
                                  ),
                                  child: VerticalDivider(
                                    color: ColorConstants.appWhite,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedTextStyle = 4;
                                    });
                                  },
                                  child: const CustomizationTab(
                                    imageString: 'assets/images/align.png',
                                    text: 'Align',
                                    condition: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 15.h,
                                    horizontal: 3.w,
                                  ),
                                  child: VerticalDivider(
                                    color: ColorConstants.appWhite,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedTextStyle = 5;
                                    });
                                  },
                                  child: const CustomizationTab(
                                    imageString: 'assets/images/bend.png',
                                    text: 'Bend',
                                    condition: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 15.h,
                                    horizontal: 3.w,
                                  ),
                                  child: VerticalDivider(
                                    color: ColorConstants.appWhite,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedTextStyle = 6;
                                    });
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return WillPopScope(
                                          onWillPop: () async {
                                            Navigator.of(context).pop();
                                            setState(() {
                                              selectedTextStyle = null;
                                            });
                                            return true;
                                          },
                                          child: AlertDialog(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              horizontal: 0.w,
                                              vertical: 0.h,
                                            ),
                                            content: Container(
                                              height: 215.h,
                                              width: 350.w,
                                              decoration: BoxDecoration(
                                                color: ColorConstants.appWhite,
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      IconButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                          setState(() {
                                                            selectedTextStyle =
                                                                null;
                                                          });
                                                        },
                                                        icon: Icon(
                                                          Icons.clear_outlined,
                                                          size: 26.sp,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 18.w),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'Edit Your Text',
                                                              style: GoogleFonts
                                                                  .inter(
                                                                textStyle:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      13.sp,
                                                                  color:
                                                                      ColorConstants
                                                                          .appRed,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const Divider(),
                                                        MyTextField1(
                                                          controller:
                                                              textEditingController,
                                                          keyboardType:
                                                              TextInputType
                                                                  .text,
                                                          hintText: '',
                                                        ),
                                                        SizedBox(height: 10.h),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Done(
                                                              callBack: () {
                                                                textEditDone();
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: const CustomizationTab(
                                    imageString: 'assets/images/edit.png',
                                    text: 'Edit',
                                    condition: false,
                                  ),
                                ),
                                SizedBox(width: 24.5.w),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : SizedBox(height: 166.h),
          selectedCustomizationTab == 6
              ? SizedBox(
                  height: 0.h,
                  width: 0.w,
                )
              : Expanded(
                  child: Container(
                    color: ColorConstants.appRed,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedCustomizationTab = 0;
                            });
                          },
                          child: CustomizationTab(
                            imageString: 'assets/images/color.png',
                            text: 'Color',
                            condition: selectedCustomizationTab == 0,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedCustomizationTab = 1;
                            });
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return WillPopScope(
                                  onWillPop: () async {
                                    Navigator.of(context).pop();
                                    setState(() {
                                      selectedCustomizationTab = 5;
                                    });
                                    return true;
                                  },
                                  child: AlertDialog(
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 0.w,
                                      vertical: 0.h,
                                    ),
                                    content: Container(
                                      height: 215.h,
                                      width: 350.w,
                                      decoration: BoxDecoration(
                                        color: ColorConstants.appWhite,
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                  setState(() {
                                                    selectedCustomizationTab =
                                                        5;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.clear_outlined,
                                                  size: 26.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 18.w),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Enter Your Text',
                                                      style: GoogleFonts.inter(
                                                        textStyle: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 13.sp,
                                                          color: ColorConstants
                                                              .appRed,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Divider(),
                                                MyTextField1(
                                                  controller:
                                                      textEditingController,
                                                  keyboardType:
                                                      TextInputType.text,
                                                  hintText: 'Enter.....',
                                                ),
                                                SizedBox(height: 10.h),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Done(
                                                      callBack: () {
                                                        textDone();
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: CustomizationTab(
                            imageString: 'assets/images/A.png',
                            text: 'Text',
                            condition: selectedCustomizationTab == 1,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedCustomizationTab = 2;
                            });
                          },
                          child: CustomizationTab(
                            imageString: 'assets/images/photo.png',
                            text: 'Photo',
                            condition: selectedCustomizationTab == 2,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedCustomizationTab = 3;
                            });
                          },
                          child: CustomizationTab(
                            imageString: 'assets/images/shapes.png',
                            text: 'Shapes',
                            condition: selectedCustomizationTab == 3,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedCustomizationTab = 4;
                            });
                          },
                          child: CustomizationTab(
                            imageString: 'assets/images/effects.png',
                            text: 'Effects',
                            condition: selectedCustomizationTab == 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  undo() {
    log('Undo');
  }

  changeShoes() {
    log('Change Shoes');
  }

  delete() {
    log('Delete');
  }

  textDone() {
    log('Text Done');
    Navigator.of(context).pop();
    setState(() {
      selectedCustomizationTab = 6;
    });
  }

  textEditDone() {
    log('Text Edit Done');
    Navigator.of(context).pop();
    setState(() {
      selectedTextStyle = null;
    });
  }

  complete() {
    log('Complete');
  }
}
