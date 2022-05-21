import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function? onTap;
  final String? buttonTitle;

  BottomButton({this.onTap, this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red[600],
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(10),
            right: Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            buttonTitle!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 60,
      ),
    );
  }
}
