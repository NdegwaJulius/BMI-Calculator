import 'package:flutter/material.dart';

import 'ReusableCard.dart';

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
               Expanded(child: ReusableCard(colour: Color(0xFF1D1E33)),),
              Expanded(child: ReusableCard(colour: Color(0xFF1D1E33)),),

             ],
           ),
         ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child:ReusableCard(colour: Color(0xFF1D1E33),),),

              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: Color(0xFF1D1E33)),),
                Expanded(child: ReusableCard(colour: Color(0xFF1D1E33)),),

              ],
            ),
          ),




        ],
      ),

    );
  }
}

