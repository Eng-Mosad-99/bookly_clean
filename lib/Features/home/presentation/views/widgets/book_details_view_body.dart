import 'package:flutter/material.dart';
import 'Custbook_details_app_bar.dart';
import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: <Widget>[
                CustomBookDetailsAppBar(),
                SizedBox(height: 16),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 30)),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
