import 'package:flutter/material.dart';

class CircleUIConfig {
  final Color borderColor;
  final Color fillColor;
  final double borderWidth;
  final double circleSize;
  double extraSize;

  CircleUIConfig(
      {this.extraSize = 0,
      this.borderColor = Colors.white,
      this.borderWidth = 1,
      this.fillColor = Colors.white,
      this.circleSize = 50});
}

class Circle extends StatelessWidget {
  final bool filled;
  final CircleUIConfig circleUIConfig;
  final String letter;

  Circle(
      {Key key,
      this.filled = false,
      @required this.circleUIConfig,
      this.letter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: circleUIConfig.extraSize),
      width: circleUIConfig.circleSize,
      height: circleUIConfig.circleSize,
      decoration: BoxDecoration(
        color: filled ? circleUIConfig.fillColor : Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
            color: circleUIConfig.borderColor,
            width: circleUIConfig.borderWidth),
      ),
      child: Center(
          child: Text(
        this.letter,
        style: TextStyle(color: circleUIConfig.borderColor, fontSize: 18),
        textAlign: TextAlign.center,
      )),
    );
  }
}
