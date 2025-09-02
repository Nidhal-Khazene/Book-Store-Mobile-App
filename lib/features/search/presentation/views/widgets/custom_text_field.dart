import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../manager/searched_books_cubit/search_books_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (data) {
        BlocProvider.of<SearchBooksCubit>(
          context,
        ).fetchSearchedBooks(keyword: data);
      },
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: "use keyword, like code...",
        hintStyle: const TextStyle(color: kSplashColor),
        suffixIcon: Opacity(
          opacity: .8,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 32, color: kSplashColor),
          ),
        ),
        prefixIcon: Opacity(
          opacity: .8,
          child: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back, size: 32, color: kSplashColor),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: kSplashColor),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
