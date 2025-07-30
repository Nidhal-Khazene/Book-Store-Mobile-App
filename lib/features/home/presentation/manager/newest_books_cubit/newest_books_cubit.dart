import 'package:bloc/bloc.dart';
import 'package:gramaz_app/features/home/data/models/book_model/book_model.dart';
import 'package:gramaz_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../../../core/errors/failures.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (Failure failure) {
        emit(NewestBooksFailure(failure.errMessage));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
