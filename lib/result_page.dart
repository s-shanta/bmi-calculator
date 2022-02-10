import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/footer_button.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result_Page extends StatelessWidget {
  const Result_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Center(
                  child: Text(
                    'YOUR RESULT',
                    style: footerLabelTextStyle,
                  ),
                ),
              ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colorName: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                        'normal',
                        style: labelTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        '20.7',
                        style: numberTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        'you are overweight...',
                        style: labelTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
          ),
          Footer_Button(
              footerButtonText: 'RE-CALCULATE',
              onTapFunction: (){
                Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }
}
