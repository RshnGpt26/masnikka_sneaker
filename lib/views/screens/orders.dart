import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masnikkasneaker/constants/color_constants.dart';

import '../widgets/item_details_card.dart';
import '../widgets/my_app_bar.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.appWhite,
        elevation: 1.5,
        title: const MyAppBar(
          title: 'Orders',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
          vertical: 17.h,
        ),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) => InkWell(
            onTap: () {},
            child: const ItemDetailsCard(),
          ),
        ),
      ),
    );
  }
}
