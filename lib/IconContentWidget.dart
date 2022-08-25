import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContentWidget extends StatelessWidget {
   const IconContentWidget({
     required this.icon, required this.label,
  }) ;
final IconData icon;
final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  <Widget>[
        Icon(icon),
        SizedBox(height: 10.0,),
        Text(style: TextStyle(fontSize: 18.0,color: Color(0xFF8D8E98),),label,),
      ],
    );
  }
}

