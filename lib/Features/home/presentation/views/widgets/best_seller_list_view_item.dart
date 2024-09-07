import 'package:bookly_clean/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_clean/constants.dart';
import 'package:bookly_clean/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/book_details');
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[200],
                  image: const DecorationImage(
                    image: AssetImage(
                      AppAssets.bookImage,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Author: J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const BookRating(
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
