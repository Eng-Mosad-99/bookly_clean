import 'package:bookly_clean/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_clean/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          CustomSearchTextFormField(),
          SizedBox(height: 16),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
