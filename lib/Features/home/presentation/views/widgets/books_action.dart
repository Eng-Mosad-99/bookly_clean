import 'package:bookly_clean/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: BooksActionButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: '19.99€',
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: BooksActionButton(
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              text: 'Free Preview',
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
