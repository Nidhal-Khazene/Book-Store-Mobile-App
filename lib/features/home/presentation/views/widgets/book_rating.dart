import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 16),
        const SizedBox(width: 6.3),
        Text("4.8", style: Styles.textStyle16),
        const SizedBox(width: 7),
        Opacity(
          opacity: .5,
          child: Text("(2390)", style: Styles.textStyle14.copyWith()),
        ),
      ],
    );
  }
}
