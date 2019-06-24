import 'package:flutter/material.dart';

///
/// Create by Hugo.Guo
/// Date: 2019-06-12
///
class FullIconButton extends MaterialButton with MaterialButtonWithIconMixin {
  FullIconButton({
    Key key,
    @required VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    double elevation,
    double highlightElevation,
    double disabledElevation,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    FocusNode focusNode,
    MaterialTapTargetSize materialTapTargetSize,
    Duration animationDuration,
    double minWidth,
    double height,
    Widget leftIcon,
    Widget topIcon,
    Widget rightIcon,
    Widget bottomIcon,
    EdgeInsetsGeometry textPadding = const EdgeInsets.all(0),
    Widget label,
  })  : assert(elevation == null || elevation >= 0.0),
        assert(highlightElevation == null || highlightElevation >= 0.0),
        assert(disabledElevation == null || disabledElevation >= 0.0),
        super(
          key: key,
          onPressed: onPressed,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          elevation: elevation,
          highlightElevation: highlightElevation,
          disabledElevation: disabledElevation,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          materialTapTargetSize: materialTapTargetSize,
          animationDuration: animationDuration,
          minWidth: minWidth,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Offstage(
                offstage: topIcon == null,
                child: topIcon,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Offstage(
                    offstage: leftIcon == null,
                    child: leftIcon,
                  ),
                  Padding(
                    padding: textPadding,
                    child: label,
                  ),
                  Offstage(
                    offstage: rightIcon == null,
                    child: rightIcon,
                  ),
                ],
              ),
              Offstage(
                offstage: bottomIcon == null,
                child: bottomIcon,
              ),
            ],
          ),
        );
}
