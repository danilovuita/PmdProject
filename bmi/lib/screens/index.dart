import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class IndexScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Text('BMI Calculator', style: kLabelTextStyle),
          ),
          Expanded(
            child: RectangleTextButton(
                title: "Press here to start", onPressed: () {
                  Navigator.pushNamed(context, '/first');
            }),
          ),
        ],
      ),
    );
  }
}
class RectangleTextButton extends StatelessWidget {
  RectangleTextButton({@required this.title, @required this.onPressed});

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(title),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: ContinuousRectangleBorder(),
      fillColor: Colors.grey,
    );
  }
}
