import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
//stateless widgets are immutable
  final Color colour;
  final Widget ? cardChild;
  final void Function()? onPress;

   ReusableCard({ required this.cardChild, required this.colour, this.onPress});

//the final keyword
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(

        margin:  EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
