import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(),
        ),
        const SizedBox(height: 45),
        Text("The Jungle Book", style: Styles.textStyle30),
        const SizedBox(height: 9),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 12),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37.6),
        BooksAction(),
      ],
    );
  }
}
