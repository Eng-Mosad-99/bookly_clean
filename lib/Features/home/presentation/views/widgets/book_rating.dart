import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.mainAxisAlignment});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: <Widget>[
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 20,
        ),
        const SizedBox(
          width: 6.5,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(3353)',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
