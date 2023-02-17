import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusablecard.dart';
import '../components/bottom_container.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiValue,
      required this.bmiResult,
      required this.interpretation});

  final String bmiResult;
  final String bmiValue;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitletextstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiResult,
                    style: kResultTextstyle,
                  ),
                  Text(
                    bmiValue,
                    style: kBMItextstyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodytextstyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: BottomContainer(
            Bottomcontainertext: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ))
        ],
      ),
    );
  }
}
