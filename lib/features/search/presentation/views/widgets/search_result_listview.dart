import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gramaz_app/core/widgets/custom_error_message.dart';
import 'package:gramaz_app/core/widgets/custom_loading_indicator.dart';
import 'package:gramaz_app/features/home/presentation/views/widgets/book_listview_item.dart';
import 'package:gramaz_app/features/search/presentation/manager/searched_books_cubit/search_books_cubit.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                // child: BookListViewItem(),
                child: BookListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is SearchBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
