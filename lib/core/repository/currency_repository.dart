import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/currency/currency.dart';
import '../models/currency/currency_response.dart';
import '../provider/exceptions.dart';

final clientProvider = Provider((ref) => Dio(BaseOptions(baseUrl: 'http://192.168.56.1/api')));

final currencyRepository = Provider<CurrencyRepositoryAPI>((ref) => CurrencyRepositoryAPI(ref.read));

abstract class CurrencyRepository {
  Future<List<Currency>> getCurrencies();
}

class CurrencyRepositoryAPI implements CurrencyRepository {
  final Reader read;

  CurrencyRepositoryAPI(this.read);

  @override
  Future<List<Currency>> getCurrencies() async {
    try {
      final response = await read(clientProvider).get('/currencies.php');
      print('response');
      print(response.data);
      print(CurrencyResponse.fromJson(response.data));
      return response.data;
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
