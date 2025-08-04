import 'package:flutter/material.dart';
import 'package:gramaz_app/constants.dart';
import 'package:gramaz_app/features/home/data/models/book_model/book_model.dart';
import 'package:gramaz_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:gramaz_app/features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:gramaz_app/features/home/presentation/views/widgets/similar_books_section.dart';

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
