import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final double verticalPadding;
  final double horizontalPadding;
  final Color backColor;
  final Function callBack;
  final Widget child;
  const CustomButton({
    Key? key,
    required this.width,
    required this.height,
    required this.radius,
    required this.verticalPadding,
    required this.horizontalPadding,
    required this.backColor,
    required this.callBack,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(          
          shadowColor: MaterialStateProperty.all(
            ColorConstants.appShadow,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: verticalPadding,
              horizontal: horizontalPadding,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            backColor,
          ),
        ),
        onPressed: () {
          callBack();
        },
        child: child,
      ),
    );
  }
}