import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: <Widget>[
          Image.asset(
            AppAssets.logoImage,
            height: 18,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push('/search');
            },
            child: Image.asset(
              AppAssets.searchImage,
              width: 35,
            ),
          ),
        ],
      ),
    );
  }
}
