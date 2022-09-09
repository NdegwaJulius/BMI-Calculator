import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class sliderClass extends StatefulWidget {
  const sliderClass({Key? key}) : super(key: key);

  @override
  _sliderClassState createState() => _sliderClassState();
}

class _sliderClassState extends State<sliderClass> {
  int height = 120;

  //get height => null;

  @override
  Widget build(BuildContext context) {

    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        inactiveTrackColor:  Color(0xFF8D8E98),
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        activeTrackColor: Colors.white,
        overlayColor: Color(0x29EB1555),
        thumbColor:Color(0xFFEB1555),
      ),
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
    );
  }
}
