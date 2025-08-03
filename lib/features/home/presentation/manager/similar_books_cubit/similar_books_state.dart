part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState extends Equatable {}

final class SimilarBooksInitial extends SimilarBooksState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;
  SimilarBooksSuccess({required this.books});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;
  SimilarBooksFailure({required this.errMessage});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class SimilarBooksLoading extends SimilarBooksState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
