import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(image: book.volumeInfo?.imageLinks?.thumbnail),
        ),
        const SizedBox(height: 45),
        Center(
          child: Text(
            book.volumeInfo?.title ?? "Unknown",
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 9),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo?.authors?.first ?? "Unknown",
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 12),
        BookRating(
          rating: book.volumeInfo!.averageRating ?? 0,
          countRating: book.volumeInfo!.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37.6),
        BooksAction(book: book),
      ],
    );
  }
}
