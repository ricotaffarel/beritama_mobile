import 'package:beritama/shared/theme/theme_config.dart';
import 'package:beritama/shared/theme/theme_size.dart';
import 'package:flutter/material.dart';

class QButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double? width;
  final double? height;
  final double? labelSize;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final Color? color;
  final Color? textColor;
  final bool spaceBetween;
  final ThemeSize size;

  const QButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height,
    this.labelSize,
    this.prefixIcon,
    this.sufixIcon,
    this.color,
    this.textColor,
    this.spaceBetween = false,
    this.size = ThemeSize.md,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widgetWidth = width ?? MediaQuery.of(context).size.width;
    double widgetHeight = 46.0;
    double widgetFontSize = 16.0;
    double widgetIconSize = 24.0;

    widgetWidth *= size.scaleFactor;
    widgetHeight *= size.scaleFactor;
    widgetFontSize *= size.scaleFactor;
    widgetIconSize *= size.scaleFactor;

    return SizedBox(
      width: widgetWidth,
      height: height ?? widgetHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? primaryColor,
        ),
        onPressed: () => onPressed(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null) ...[
              Icon(
                prefixIcon!,
                size: widgetIconSize,
              ),
              const SizedBox(
                width: 6.0,
              ),
            ],
            if (spaceBetween && prefixIcon != null) const Spacer(),
            Text(
              label,
              style: TextStyle(
                  fontSize: labelSize ?? widgetFontSize,
                  color: textColor ?? Colors.white),
            ),
            if (spaceBetween && sufixIcon != null) const Spacer(),
            if (sufixIcon != null) ...[
              Icon(
                sufixIcon!,
                size: widgetIconSize,
              ),
              const SizedBox(
                width: 6.0,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
