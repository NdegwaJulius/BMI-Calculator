import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
//stateless widgets are immutable

  ReusableCard({required this.colour});
   final Color colour;
//the final keyword
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
      ),
    );
  }
}
