import 'package:flutter/material.dart';
import 'package:gramaz_app/constants.dart';
import 'package:gramaz_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:gramaz_app/features/search/presentation/views/widgets/search_result_listview.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          CustomTextField(),
          SizedBox(height: 16),
          Text("Search Result", style: Styles.textStyle18),
          SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
