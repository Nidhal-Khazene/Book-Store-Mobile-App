import 'package:bookly_app/features/home/presentation/views/widgets/similar_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("You can also like", style: Styles.textStyle18),
        const SizedBox(height: 17),
        SimilarListView(),
      ],
    );
  }
}
