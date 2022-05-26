import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.phone,
    required this.desktop,
  }) : super(key: key);

  final Widget phone;
  final Widget desktop;
  final double phoneWidth = 950;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > phoneWidth) {
          return desktop;
        } else {
          return phone;
        }
      },
    );
  }
}
