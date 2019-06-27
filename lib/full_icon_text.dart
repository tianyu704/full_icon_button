import 'package:flutter/material.dart';

///
/// Create by Hugo.Guo
/// Date: 2019-06-27
///

class FullIconText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final Widget leftIcon;
  final Widget topIcon;
  final Widget rightIcon;
  final Widget bottomIcon;
  final EdgeInsetsGeometry margin;
  final Axis direction;

  FullIconText(
    this.text, {
    Key key,
    this.textColor = Colors.black,
    this.fontSize = 14.0,
    this.leftIcon,
    this.topIcon,
    this.rightIcon,
    this.bottomIcon,
    this.margin = EdgeInsets.zero,
    this.direction = Axis.horizontal,
  })  : assert(text.isNotEmpty),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return direction == Axis.horizontal
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Offstage(
                offstage: leftIcon == null,
                child: leftIcon,
              ),
              Padding(
                padding: margin,
                child: Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                  ),
                ),
              ),
              Offstage(
                offstage: rightIcon == null,
                child: rightIcon,
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Offstage(
                offstage: topIcon == null,
                child: topIcon,
              ),
              Padding(
                padding: margin,
                child: Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                  ),
                ),
              ),
              Offstage(
                offstage: bottomIcon == null,
                child: bottomIcon,
              ),
            ],
          );
  }
}
