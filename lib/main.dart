import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          //primarySwatch: Colors.pink,
          scaffoldBackgroundColor: Color(0xFF090C22),
         // textTheme:TextTheme(bodyText2: TextStyle(color:Colors.white )),
          appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: Color(0xFF090C22),
          ),
        ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}

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
      body: const Center(

        child: Text('Hello world ? I am a  Body Text' ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          accentColor: Colors.purple
        ),
        child: FloatingActionButton(
          onPressed: () {  },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
