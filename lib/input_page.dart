import 'package:bmi_calculator/IconContentWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ReusableCard.dart';
const bottomContainerHeight = 80.0;
const bottomBarText = 'Calculate';
const themeColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
const appBarTitle = 'BMI CALCULATOR';
// Final means single-assignment.
// Const means immutable.
//A final variable can be set only once; a const variable is a compile-time constant.
// (Const variables are implicitly final.)
enum Gender{
  male,
  female,
}



class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

      Gender ? SelectedGender;




    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xFF090C22),
        title: const Text(appBarTitle),
      ),
      body: Column(
        children:<Widget> [
         Expanded(
           child: Row(
             children: <Widget>[
               Expanded(child:
               GestureDetector(
                 onTap: (){
                   setState(() {
                     SelectedGender = Gender.male;
                   });

                 },
                 child: ReusableCard(colour: SelectedGender == Gender.male ? themeColor : inactiveColor,
                   cardChild: const IconContentWidget(icon: FontAwesomeIcons.mars,label:'MALE' ,),),
               ),),
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    SelectedGender = Gender.female;
                  });

                },
                child: ReusableCard(colour: SelectedGender == Gender.female ? themeColor : inactiveColor,
                  cardChild: const IconContentWidget(icon: FontAwesomeIcons.venus,label: 'FEMALE',),),
              ),),

             ],
           ),
         ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child:ReusableCard(colour: themeColor, cardChild: const IconContentWidget(icon: FontAwesomeIcons.mars,label:'MALE' ,),),),

              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: themeColor, cardChild: const IconContentWidget(icon: FontAwesomeIcons.mars,label:'MALE' ,),),),
                Expanded(child: ReusableCard(colour: themeColor, cardChild: const IconContentWidget(icon: FontAwesomeIcons.mars,label:'MALE' ,),),),

              ],
            ),
          ),
          Container(
            color: bottomContainerColor ,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            child: const Center(
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

