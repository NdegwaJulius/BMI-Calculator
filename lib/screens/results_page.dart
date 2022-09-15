import 'package:bmi_calculator/components/ReusableCard.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';


class ResultsPage extends StatelessWidget {
  ResultsPage(
      {
        required this.interpretation,
        required this.bmiResult,
        required this.resultText
      });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(child: Container(child: Text("Your Result",style: kTitleTextStyle,),),),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kThemeColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:CrossAxisAlignment.center ,
                children: <Widget>[
                  Text(
                        'Normal',
                    style: kResultTextStyle,
                  ) ,
                  Text(
                    '15.9',
                    style: kBMITextStyle,
                  ) ,
                  Text(
                    'Eat more you BMI Is wanting, eat more food buddy',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ) ,

                ],
              ),
            ),
          ),

        ],
      )
    );
  }
}
