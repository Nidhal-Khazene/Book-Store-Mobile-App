import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding30),
      child: SafeArea(
        child: Column(
          children: [
            CustomAppBarBookDetails(),
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
          ],
        ),
      ),
    );
  }
}
