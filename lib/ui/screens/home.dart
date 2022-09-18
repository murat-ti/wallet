import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../core/models/currency/currency.dart';
import '../../core/provider/currency_provider.dart';
import '../shared/utils/constants.dart';
import '../shared/widgets/bottom_sheet_modal/bottom_dialog.dart';
import '../shared/widgets/dialog/dialog.dart';
import '../shared/widgets/tile/currency_tile.dart';

class HomePage extends HookConsumerWidget {
  static const _headerText = 'Wallet';
  static const _fontSize = 30.0;
  static const _dividerThickness = 1.0;

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currencies = ref.watch(currenciesProvider);
    return WillPopScope(
      onWillPop: () => onWillPop(context),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: ApplicationSizes.paddingVertical,
              horizontal: ApplicationSizes.paddingHorizontal,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildHeader(context),
                buildListView(context, currencies),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text buildHeader(BuildContext context) {
    return Text(
      _headerText,
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
            fontSize: _fontSize,
            fontWeight: FontWeight.w700,
          ),
    );
  }

  Widget buildListView(BuildContext context, AsyncValue<List<Currency>> currencies) {
    return Expanded(
      child: currencies.when(
        data: (data) {
          return ListView.separated(
            itemCount: data.length,
            itemBuilder: (ctx, int idx) => ProviderScope(
              overrides: [
                currentCurrency.overrideWithValue(data[idx]),
              ],
              child: CurrencyTile(
                onTap: () {
                  if (data[idx].isDepositEnabled) {
                    showBottomDialog(context, data[idx].code);
                  }
                },
              ),
            ),
            separatorBuilder: (context, index) {
              return const Divider(
                color: ApplicationColors.dividerColor,
                thickness: _dividerThickness,
              );
            },
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        error: (error, e) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}
