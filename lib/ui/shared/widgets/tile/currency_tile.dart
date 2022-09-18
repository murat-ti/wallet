import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/models/currency/currency.dart';
import '../../../../core/provider/account_provider.dart';
import '../../utils/constants.dart';
import '../../utils/image_path_svg.dart';

final currentCurrency = Provider<Currency>((ref) => const Currency(
      name: '',
      code: '',
      icon: '',
      isDepositEnabled: true,
      ticker: '',
    ));

class CurrencyTile extends HookConsumerWidget {
  //final WalletModel record;
  final Function()? onTap;

  const CurrencyTile({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currency = ref.watch(currentCurrency);
    final account = ref.watch(accountsProvider(currency.code));
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: buildSvg(currency.code.toLowerCase()),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${currency.ticker} | ${currency.name}'),
          account.when(
              data: (final account) {
                return Text('\$${number.format(account.balanceDecimals)}');
              },
              loading: () => const Center(child: CircularProgressIndicator.adaptive()),
              error: (error, stk) => Center(child: Text(error.toString()))),
        ],
      ),
      onTap: onTap,
    );
  }

  Widget buildSvg(String flag) {
    return SvgPicture.asset(SVGImagePaths.instance.toFlagSvg(flag));
  }
}
