// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:myfirstapp/features/auth/presentation/signup_screen.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key,
    this.buttonText,
    this.onTap,
    this.color,
    this.textColor,
  });
  final String? buttonText;
  final Widget? onTap;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e) => onTap!,
          ),
        );
      },
      child: Container(
          padding: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
              color: color!,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
              )),

          // if you  add some new changes
          child: Text(
            buttonText!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: textColor!,
            ),
          )),
    );
  }
}
