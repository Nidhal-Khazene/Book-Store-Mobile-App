import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: "ApiServer connection is timeout.");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: "Send timeout with ApiServer.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: "Receive timeout with ApiServer.");
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: "Bad Certificate with ApiServer.");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          statusCode: dioException.response!.statusCode,
          response: dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: "Request to ApiServer was canceled.");
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: "No Internet Connection!");
      case DioExceptionType.unknown:
        return ServerFailure(errMessage: "Expected error, please try later!");
    }
  }

  factory ServerFailure.fromResponse({
    int? statusCode,
    required dynamic response,
  }) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
        errMessage: "Your request not found, please try later!",
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errMessage: "Internal Server Error, please try later!",
      );
    } else {
      return ServerFailure(
        errMessage: "Oops there was an error, please try again",
      );
    }
  }
}
