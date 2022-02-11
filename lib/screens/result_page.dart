import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/footer_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result_Page extends StatelessWidget {

  final String bmiNumber;
  final String bmiResult;
  final String interpretation;

  Result_Page({required this.bmiNumber, required this.bmiResult, required this.interpretation});

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        bmiResult,
                        style: bmiResultTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        bmiNumber,
                        style: numberTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        interpretation,
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
