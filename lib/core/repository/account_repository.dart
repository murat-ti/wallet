import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallet/core/models/account/account.dart';
import '../models/account/account.dart';
import '../provider/exceptions.dart';

final clientProvider = Provider((ref) => Dio(BaseOptions(baseUrl: 'http://192.168.56.1/api')));

final accountRepository = Provider<AccountRepositoryAPI>((ref) => AccountRepositoryAPI(ref.read));

abstract class AccountRepository {
  Future<Account> getAccount(String currency);
}

class AccountRepositoryAPI implements AccountRepository {
  final Reader read;

  AccountRepositoryAPI(this.read);

  @override
  Future<Account> getAccount(String currency) async {
    try {
      //load from api
      //final response = await read(clientProvider).get('/accounts.php');
      //return Account.accountListFromJson(response.data);

      //load from json
      final response = await rootBundle.loadString("assets/json/accounts.json");
      List<Account> accounts = Account.accountListFromJson(response);

      return accounts.firstWhere((element) => element.code == currency);
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
