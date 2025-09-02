import 'package:flutter/material.dart';
import 'package:story_nest/features/home/presentation/views/widgets/similar_list_view.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You can also like", style: Styles.textStyle18),
        SizedBox(height: 17),
        SimilarListView(),
      ],
    );
  }
}
