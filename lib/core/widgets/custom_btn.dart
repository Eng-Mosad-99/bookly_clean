import 'package:flutter/material.dart';

import '../utils/styles.dart';

class BooksActionButton extends StatelessWidget {
  const BooksActionButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.text,
      this.borderRadius});
  final Color backgroundColor, textColor;
  final String text;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(text,
            style: Styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
            )),
      ),
    );
  }
}
