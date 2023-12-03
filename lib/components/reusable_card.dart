import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colour, this.borderColour, this.cardChild, this.onPress});

  final Color? colour;
  final Color? borderColour;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: borderColour!,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
