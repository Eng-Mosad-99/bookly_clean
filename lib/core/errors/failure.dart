// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        return ServerFailure(message: "Request to API server was cancelled");
      case DioErrorType.connectionTimeout:
        return ServerFailure(message: "Connection timeout with API server");
      case DioErrorType.receiveTimeout:
        return ServerFailure(
            message: "Receive timeout in connection with API server");
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.sendTimeout:
        return ServerFailure(
            message: "Send timeout in connection with API server");
      case DioErrorType.unknown:
        return ServerFailure(
            message:
                "Connection to API server failed due to internet connection");
      case DioErrorType.badCertificate:
        return ServerFailure(message: "Bad certificate");
      case DioErrorType.connectionError:
        return ServerFailure(message: "Connection error");
      default:
        return ServerFailure(message: "Something went wrong, try again later");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400) {
      return ServerFailure(message: response['error']['message']);
    }
    if (statusCode == 401) {
      return ServerFailure(message: response['error']['message']);
      // او بعته غلط غالبا معناها انانا مبعتش ال token
    } else if (statusCode == 403) {
      return ServerFailure(message: response['error']['message']);
// انا كده بعت التوكين عادي تمام بس مش ليا صلاحية الوصول للحتهدي
    } else if (statusCode == 404) {
      return ServerFailure(message: "Not Found , Please Try Again Later");
    } else if (statusCode == 500) {
      return ServerFailure(
          message: "Internal Server Error , Please Try Again Later");
    } else {
      return ServerFailure(message: "Something went wrong, try again later");
    }
  }
}
