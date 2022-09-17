import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/currency/currency.dart';
import '../repository/currency_repository.dart';

final currenciesProvider = FutureProvider<List<Currency>>((ref) async {
  List<Currency> currencies = await ref.read(currencyRepository).getCurrencies();
  return currencies;
});