import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/account/account.dart';
import '../repository/account_repository.dart';

final accountsProvider = FutureProvider.family<Account, String>((ref, currency) async {
  Account account = await ref.read(accountRepository).getAccount(currency);
  return account;
});
