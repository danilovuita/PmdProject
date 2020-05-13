import 'package:bmi/components/BottomButton.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.interpretation,
    @required this.bmiResult,
    @required this.resultText,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Your Result',
                      style: kTitleTextStyle,
                    ))),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTestStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'Re-Calculate',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ]),
    );
  }
}
