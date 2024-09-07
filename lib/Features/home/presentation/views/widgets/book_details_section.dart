import 'package:bookly_clean/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_clean/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 20),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 25),
        const BooksAction(),
      ],
    );
  }
}
