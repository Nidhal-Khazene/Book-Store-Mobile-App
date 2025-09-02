import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../data/repos/search_repo.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit({required this.searchRepo}) : super(SearchBooksInitial());
  SearchRepo searchRepo;

  Future<void> fetchSearchedBooks({required String keyword}) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchedBooks(keyword: keyword);
    result.fold(
      (failure) {
        emit(SearchBooksFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(SearchBooksSuccess(books: books));
      },
    );
  }
}
