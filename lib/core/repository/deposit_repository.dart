import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallet/core/models/deposit/deposit.dart';
import '../init/network/dio_manager.dart';
import '../models/deposit/deposit.dart';
import '../provider/exceptions.dart';

final clientProvider = Provider((ref) => DioManager.instance.dio);

final depositRepository = Provider<DepositRepositoryAPI>((ref) => DepositRepositoryAPI(ref.read));

abstract class DepositRepository {
  Future<Deposit> getDeposit(String currency);
}

class DepositRepositoryAPI implements DepositRepository {
  final Reader read;

  DepositRepositoryAPI(this.read);

  @override
  Future<Deposit> getDeposit(String currency) async {
    try {
      //load from api
      //final response = await read(clientProvider).get('/deposits.php');
      //return Deposit.depositListFromJson(response.data);

      //load from json
      final response = await rootBundle.loadString("assets/json/deposits.json");
      List<Deposit> deposits = Deposit.depositListFromJson(response);

      return deposits.firstWhere((element) => element.code == currency);
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
