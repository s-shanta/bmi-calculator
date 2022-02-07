import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {

  final Color colorName;
  final cardChild;
  ReusableCard({required this.colorName, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: colorName,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}