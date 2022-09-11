import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';
import '../widgets/my_app_bar.dart';
import '../widgets/payment_option.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.appWhite,
        elevation: 1.5,
        title: const MyAppBar(
          title: 'Payment',
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 19.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.w,
              right: 67.w,
            ),
            child: SizedBox(
              height: 43.h,
              width: 304.w,
              child: Text(
                "Select the secure payment method you'd like to use.",
                textAlign: TextAlign.left,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: ColorConstants.appBlack1,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 107.h,
          ),
          InkWell(
            onTap: () {},
            child: const PaymentOption(
              title: 'Debit/Credit card',
              imageString: 'assets/images/cards.png',
            ),
          ),
          SizedBox(
            height: 19.h,
          ),
          InkWell(
            onTap: () {},
            child: const PaymentOption(
              title: 'PayPal',
              imageString: 'assets/images/PayPal 1.png',
            ),
          ),
        ],
      ),
    );
  }
}
