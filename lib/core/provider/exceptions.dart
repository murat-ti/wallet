import 'package:dio/dio.dart';

class DataException implements Exception {
  DataException({required this.message});

  DataException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = 'errorRequestCancelled';
        break;
      case DioErrorType.connectTimeout:
        message = 'errorConnectionTimeout';
        break;
      case DioErrorType.receiveTimeout:
        message = 'errorReceiveTimeout';
        break;
      case DioErrorType.response:
        message = _handleError(dioError.response!.statusCode!);
        break;
      case DioErrorType.sendTimeout:
        message = 'errorSendTimeout';
        break;
      default:
        message = 'errorInternetConnection';
        break;
    }
  }

  String message = "";

  String _handleError(int statusCode) {
    switch (statusCode) {
      case 400:
        return 'errorBadRequest';
      case 404:
        return 'errorRequestNotFound';
      case 500:
        return 'errorIntenalServer';
      default:
        return 'errorSomethingWentWrong';
    }
  }

  @override
  String toString() => message;
}
