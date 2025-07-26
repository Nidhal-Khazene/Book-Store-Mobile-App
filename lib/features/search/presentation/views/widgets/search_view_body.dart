import 'package:flutter/material.dart';
import 'package:gramaz_app/constants.dart';
import 'package:gramaz_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:gramaz_app/features/search/presentation/views/widgets/search_result_listview.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          CustomTextField(),
          const SizedBox(height: 16),
          Text("Search Result", style: Styles.textStyle18),
          const SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
