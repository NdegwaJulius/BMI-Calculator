import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/IconContentWidget.dart';
import 'package:bmi_calculator/components/RoundIconButton.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/BottomButton.dart';
import 'results_page.dart';

import '../components/ReusableCard.dart';
import '../constants/constants.dart';
import 'package:bmi_calculator/calculator_brain.dart';


// Final means single-assignment.
// Const means immutable.
//A final variable can be set only once; a const variable is a compile-time constant.
// (Const variables are implicitly final.)
enum Gender{
  male,
  female,
}



class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

      late Gender  SelectedGender;
      int height=100;
      int weight = 30;
      int age = 20;




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
               Expanded(
                 child:ReusableCard(
                   onPress: (){
                     setState(() {
                       SelectedGender == Gender.male;
                     });
                   },
                   colour: SelectedGender == Gender.male ? kThemeColor : kInactiveColor,
                   cardChild:  IconContentWidget(icon: FontAwesomeIcons.mars,label:'MALE' ,),),),
               Expanded(
                 child:ReusableCard(
                   onPress: (){
                     setState(() {
                       SelectedGender == Gender.female;
                     });
                   },
                   colour: SelectedGender == Gender.female ? kThemeColor : kInactiveColor,
                   cardChild:  IconContentWidget(icon: FontAwesomeIcons.venus,label:'FEMALE' ,),),),


             ],
           ),
         ),
          Expanded(
              child: ReusableCard(
              colour: kThemeColor,
              cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text(
              'HEIGHT',
              style: kLabelTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                height.toString(),
                style: kLabelNumberStyle,
              ),
              Text(
                'cm',
                style: kLabelTextStyle,
              )
            ],
          ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape:
                    RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape:
                    RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
              ),
              ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kThemeColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kLabelNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight-=1;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight+=1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kThemeColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kLabelNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                      () {
                                    age -=1;
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age+=1;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: (){
              CalculatorBrain calc = CalculatorBrain(height:height,  weight : weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.CalculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getIntepretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
    }
}

