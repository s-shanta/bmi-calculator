import 'package:bmi_calculator/constant.dart';
import 'package:flutter/cupertino.dart';

class Footer_Button extends StatelessWidget {

  final String footerButtonText;
  final VoidCallback onTapFunction;
  const Footer_Button({required this.footerButtonText, required this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        child: Center(
          child: Text(
            footerButtonText,
            style: footerLabelTextStyle,
          ),
        ),
        color: footerColorCode,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: footerHeight,
      ),
    );
  }
}