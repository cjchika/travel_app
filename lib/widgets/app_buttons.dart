import 'package:flutter/material.dart';
import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  AppButtons(
      {super.key,
      required this.color,
      required this.backgroundColor,
      required this.size,
      required this.borderColor});

  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.buttonBackground),
    );
  }
}
