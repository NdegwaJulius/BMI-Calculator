import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ReusableCard.dart';
const bottomContainerHeight = 80.0;
const bottomBarText = 'Calculate';
const themeColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
// Final means single-assignment.
// Const means immutable.
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xFF090C22),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children:<Widget> [
         Expanded(
           child: Row(
             children: <Widget>[
               Expanded(child: ReusableCard(colour: themeColor),),
              Expanded(child: ReusableCard(colour: themeColor),),

             ],
           ),
         ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child:ReusableCard(colour: themeColor,),),

              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: themeColor),),
                Expanded(child: ReusableCard(colour: themeColor),),

              ],
            ),
          ),
          Container(
            color: bottomContainerColor ,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            child: Center(
              child: Text(bottomBarText,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
          )



        ],
      ),

    );
  }
}

