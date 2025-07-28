import 'package:dartz/dartz.dart';
import 'package:gramaz_app/core/errors/failures.dart';
import 'package:gramaz_app/features/home/data/models/book_model/book_model.dart';
import 'package:gramaz_app/features/home/data/repos/home_repo.dart';

class HomeRepoImplementation extends HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
