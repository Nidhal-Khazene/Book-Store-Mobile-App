import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:story_nest/features/search/data/repos/search_repo.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/api_service.dart';
import '../../../home/data/models/book_model/book_model.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiService apiService;

  SearchRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks({
    required String keyword,
  }) async {
    try {
      var data = await apiService.get(
        endPoint: "volumes?q=$keyword&Sorting=relevance",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
