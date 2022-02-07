import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_content.dart';

const double footerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color footerColorCode = Color(0xFFeB1555);

enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  var selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colorName: selectedGender==Gender.male? activeCardColor : inactiveCardColor,
                      cardChild: IconContent(
                        iconContent: Icons.male,
                        textContent: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colorName: selectedGender==Gender.female? activeCardColor : inactiveCardColor,
                      cardChild: IconContent(
                        iconContent: Icons.female,
                        textContent: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colorName: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colorName: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colorName: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: footerColorCode,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: footerHeight,
          )
        ],
      ),
    );
  }
}



