import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallet/core/models/currency/currency.dart';
import 'package:wallet/core/repository/currency_repository.dart';

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  late ProviderContainer container;
  late DioAdapter dioAdapter;

  setUpAll(() async {
    Dio dio = Dio();
    dioAdapter = DioAdapter(dio: dio);
    container = ProviderContainer(overrides: [clientProvider.overrideWithValue(dio)]);
    container.read(clientProvider).httpClientAdapter = dioAdapter;
  });

  test('getJson', () async {
    final response = await rootBundle.loadString("assets/json/currencies.json");
    final currencies = Currency.currencyListFromJson(response);

    expect(currencies[0].isDepositEnabled, true);
    expect(currencies[0].code, 'Aud');
  });

  group('getCurrencies', () {
    test('getCurrenciesSucess', () async {
      final result = await rootBundle.loadString("assets/json/currencies.json");
      List<Currency>? currencies = Currency.currencyListFromJson(result);

      const path = '/api/currencies';

      dioAdapter.onGet(path, (request) {
        request.reply(200, result);
      });

      final response = await container.read(currencyRepository).getCurrencies();
      expect(currencies, response);
    });
    test('getCurrenciesFailed', () async {
      const path = '/api/currencies';

      dioAdapter.onGet(path, (request) {
        request.reply(404, {});
      });

      expect(() async => await container.read(currencyRepository).getCurrencies(), throwsException);
    });
  });
}
