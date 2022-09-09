import 'package:bmi_calculator/components/IconContentWidget.dart';
import 'package:bmi_calculator/components/RoundIconButton.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'results_page.dart';

import '../components/ReusableCard.dart';
import '../constants/constants.dart';
import '../slider.dart';

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

                          Text("cm",style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(data: SliderTheme.of(context).copyWith(inactiveTrackColor:  Color(0xFF8D8E98),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                        activeTrackColor: Colors.white,overlayColor: Color(0x29EB1555),
                        thumbColor:Color(0xFFEB1555),),
                          child: Slider(
                              value: height.toDouble(),
                              min: 90.0,
                              max: 250.0,
                              activeColor: Color(0xFFEB1555),
                              inactiveColor: Color(0xFF8D8E98),
                              onChanged: (double newValue){
                                setState(() {
                                  height = newValue.round();
      });
      }),
      )
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
                Expanded(child: ReusableCard(
                  colour: kThemeColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('WEIGHT',style: kLabelTextStyle),
                      Text(weight.toString(),
                      style: kLabelNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                 weight--;
                              });
                            },

                          ),
                          const SizedBox(width: 15.0,),
                          RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                                   onPressed: (){
                                setState(() {
                              weight++;
                                });
                                   },
                          ),

                         ],
                      )


                    ],
                  )
                  ,),),
                Expanded(child: ReusableCard(colour: kThemeColor, cardChild: const IconContentWidget(icon: FontAwesomeIcons.baby,label:'AGE' ,),),),

              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage())
              );
            },
            child: Container(
              color: kBottomContainerColor ,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: const Center(
                child: Text(kBottomBarText,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )



        ],
      ),

    );
  }

}

