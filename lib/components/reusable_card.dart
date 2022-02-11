import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {

  final Color colorName;
  final Widget? cardChild;
  final onPressed;
  ReusableCard({required this.colorName, this.cardChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: colorName,
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}