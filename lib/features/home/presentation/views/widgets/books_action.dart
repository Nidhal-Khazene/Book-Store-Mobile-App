import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/functions/custom_launcher_url.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../data/models/book_model/book_model.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backgroundColor: kSplashColor,
              title: "Free",
              titleColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                await customLaunchUrl(
                  context,
                  book.volumeInfo.previewLink ?? "",
                );
              },
              backgroundColor: const Color(0xff665230),
              title: getText(book),
              titleColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel book) {
    if (book.volumeInfo.previewLink == null) {
      return "Not Available";
    } else {
      return "Preview";
    }
  }
}
