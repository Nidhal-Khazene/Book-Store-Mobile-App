import 'package:dartz/dartz.dart';
import 'package:gramaz_app/features/home/data/models/book_model/book_model.dart';

import '../../../../core/errors/failures.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks({
    required String keyword,
  });
}
