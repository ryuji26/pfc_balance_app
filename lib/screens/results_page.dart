import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfc_balance_app/components/reusable_card.dart';
import '../constants.dart';
import 'package:pfc_balance_app/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.interpretation, this.bmiResult, this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PFCバランス計算機'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'あなたの目標PFCバランス',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: '前の画面にもどる',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
