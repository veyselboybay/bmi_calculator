import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  /// Creates a reusable custom card widget with custom [color].
  ///
  /// Optionally, child widget [cardChild] can be added.

  ReusableCard({
    @required this.color,
    this.cardChild,
    this.onPress,
  });

  final Color? color;
  final Widget? cardChild;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress!(),
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
