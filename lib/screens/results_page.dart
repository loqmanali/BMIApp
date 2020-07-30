import 'file:///D:/Windows/work/flutter/bmi-calculator-flutter/lib/components/reusable_card.dart';
import 'package:bmi_calculator/components/button_buttom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretattion});
  final String bmiResult;
  final String resultText;
  final String interpretattion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BIM Calculator',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: KTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: KActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: KResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: KBMITextStyle,
                  ),
                  Text(
                    interpretattion,
                    textAlign: TextAlign.center,
                    style: KBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'Re-CALCULAT',
          ),
        ],
      ),
    );
  }
}
