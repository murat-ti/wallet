import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../init/network/dio_manager.dart';
import '../models/currency/currency.dart';
import '../provider/exceptions.dart';

final clientProvider = Provider((ref) => DioManager.instance.dio);

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
      //load from api
      //final response = await read(clientProvider).get('/currencies.php');
      //return Currency.currencyListFromJson(response.data);

      //load from json
      final response = await rootBundle.loadString("assets/json/currencies.json");
      return Currency.currencyListFromJson(response);
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
