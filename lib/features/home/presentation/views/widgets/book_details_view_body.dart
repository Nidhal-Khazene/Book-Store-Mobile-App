import 'package:flutter/material.dart';
import 'package:story_nest/features/home/presentation/views/widgets/similar_books_section.dart';

import '../../../../../constants.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_details_section.dart';
import 'custom_app_bar_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding30),
            child: SafeArea(
              child: Column(
                children: [
                  const CustomAppBarBookDetails(),
                  BookDetailsSection(book: book),
                  const Expanded(child: SizedBox(height: 51)),
                  const SimilarBooksSection(),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
