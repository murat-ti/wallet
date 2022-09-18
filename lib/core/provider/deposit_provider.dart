import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/deposit/deposit.dart';
import '../repository/deposit_repository.dart';

final depositsProvider = FutureProvider.family<Deposit, String>((ref, currency) async {
  Deposit deposit = await ref.read(depositRepository).getDeposit(currency);
  return deposit;
});
