import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';


void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF1d2136),
        colorScheme: ColorScheme.light()
            .copyWith(primary: Color(0xFF1d2136))
            .copyWith(secondary: Colors.green),
      ),
      home: InputPage(),
    );
  }
}
