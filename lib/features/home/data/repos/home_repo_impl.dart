import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gramaz_app/core/errors/failures.dart';
import 'package:gramaz_app/core/utils/api_service.dart';
import 'package:gramaz_app/features/home/data/models/book_model/book_model.dart';
import 'package:gramaz_app/features/home/data/repos/home_repo.dart';

class HomeRepoImplementation extends HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            "volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest",
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

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
