import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
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
    );
  }
}
