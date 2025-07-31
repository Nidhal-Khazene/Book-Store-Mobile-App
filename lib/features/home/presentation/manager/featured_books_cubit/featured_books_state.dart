part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState extends Equatable {}

final class FeaturedBooksInitial extends FeaturedBooksState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class FeaturedBooksLoading extends FeaturedBooksState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksFailure(this.errMessage);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
