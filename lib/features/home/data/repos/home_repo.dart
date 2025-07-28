import 'package:dartz/dartz.dart';
import 'package:gramaz_app/core/errors/failures.dart';
import 'package:gramaz_app/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
