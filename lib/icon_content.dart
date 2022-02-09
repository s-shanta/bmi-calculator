import 'package:bmi_calculator/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {

  final IconData? iconContent;
  final String textContent;

  IconContent({this.iconContent, required this.textContent});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconContent,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textContent,
          style: labelTextStyle,
        )
      ],
    );
  }
}