import 'package:flutter/material.dart';

class InfoIcon extends StatelessWidget {
  const InfoIcon({
    Key? key,
    required this.textThemeStyle,
    required this.lebel,
    this.icon,
    this.spaceing = 10,
    this.iconSize = 30,
    this.iconColor,
    this.useWidget = false,
    this.widget,
  }) : super(key: key);

  final TextStyle textThemeStyle;
  final String lebel;
  final IconData? icon;
  final double? spaceing;
  final double? iconSize;
  final Color? iconColor;
  final bool useWidget;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          useWidget
              ? widget!
              : Icon(
                  icon,
                  size: iconSize,
                  color: iconColor,
                ),
          SizedBox(width: spaceing),
          SelectableText(
            lebel,
            style: textThemeStyle,
          ),
        ],
      ),
    );
  }
}
