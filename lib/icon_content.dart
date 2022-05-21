import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  /// Creates a custom Icon Content
  final IconData? icon;
  final String? label;

  IconContent({
    this.icon,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        icon,
        size: 80.0,
      ),
      const SizedBox(
        height: 15.0,
      ),
      Text(
        label!,
        style: klabelTextStyle,
      )
    ]);
  }
}
