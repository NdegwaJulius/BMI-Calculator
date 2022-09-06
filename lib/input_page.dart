import 'package:bmi_calculator/IconContentWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ReusableCard.dart';
import 'constants.dart';

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
      int height=100;




    @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xFF090C22),
        title: const Text(kAppBarTitle),
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
                 child: ReusableCard(colour: SelectedGender == Gender.male ? kThemeColor : kInactiveColor,
                   cardChild: const IconContentWidget(icon: FontAwesomeIcons.mars,label:'MALE' ,),),
               ),),
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    SelectedGender = Gender.female;
                  });

                },
                child: ReusableCard(colour: SelectedGender == Gender.female ? kThemeColor : kInactiveColor,
                  cardChild: const IconContentWidget(icon: FontAwesomeIcons.venus,label: 'FEMALE',),),
              ),),

             ],
           ),
         ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child:ReusableCard(colour: kThemeColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("HEIGHT",style: kLabelTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(height.toString(),
                          style: kLabelNumberStyle,
                          ),

                          Text("cm",
                          style: kLabelTextStyle,
                          )
                        ],
                      ),
                      Slider(
                          value: height.toDouble(),
                          min: 90.0,
                          max: 250.0,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newValue){
                            setState(() {
                              height = newValue.round();

                            });
                          })
                    ],
                  )
                ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: kThemeColor, cardChild: const IconContentWidget(icon: FontAwesomeIcons.weightScale,label:'WEIGHT' ,),),),
                Expanded(child: ReusableCard(colour: kThemeColor, cardChild: const IconContentWidget(icon: FontAwesomeIcons.baby,label:'AGE' ,),),),

              ],
            ),
          ),
          Container(
            color: kBottomContainerColor ,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: const Center(
              child: Text(kBottomBarText,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
          )



        ],
      ),

    );
  }

}

