import 'dart:io';
import 'package:dio/dio.dart';
import '../../../ui/shared/utils/constants.dart';

class DioManager {
  static DioManager? _instance;
  static DioManager get instance {
    _instance ??= DioManager._init();
    return _instance!;
  }

  Dio? _dio;
  Dio get dio => _dio ?? Dio();

  static final BaseOptions _baseOptions = BaseOptions(
    baseUrl: Platform.isAndroid ? ApplicationApi.androidBaseUrl : ApplicationApi.iosBaseUrl,
  );

  DioManager._init() {
    _dio = Dio(_baseOptions);

    /*_dio!.interceptors.add(InterceptorsWrapper(
        onRequest:(options, handler){
          options.path += 'language=ru';
        },
        onResponse:(response,handler) {
          return response.data;
        },
        onError: (DioError e, handler) {
          //return BaseError(e.message);
        }
    ));*/
  }
}
