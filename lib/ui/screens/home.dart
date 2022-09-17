import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../core/models/wallet_model.dart';
import '../../core/provider/currency_provider.dart';
import '../shared/utils/constants.dart';
import '../shared/widgets/bottom_sheet_modal/bottom_dialog.dart';
import '../shared/widgets/dialog/dialog.dart';
import '../shared/widgets/tile/wallet_record_tile.dart';

class HomePage extends HookConsumerWidget {
  static const _headerText = 'Wallet';
  static const _fontSize = 30.0;
  static const _dividerThickness = 1.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('Before build');
    final currencies = ref.watch(currenciesProvider);
    print(currencies);
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
                //buildListView(context),
                Expanded(
                  child: currencies.when(
                    data: (data) {
                      /*return Container(
                        child: ListView.builder(
                          padding: EdgeInsets.only(top: 0.0),
                          itemCount: data.length,
                          itemBuilder: (ctx, int idx) => ProviderScope(
                            overrides: [
                              currentPair.overrideWithValue(data[idx]),
                            ],
                            child: const PairTile(),
                          ),
                        ),
                      );*/
                      return Text('It is loaded ${data.length}');
                    },
                    loading: () => Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (error, e) => Center(
                      child: Text(error.toString()),
                    ),
                  ),
                )
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

  ListView buildListView(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        for (int i = 0; i < 3; i++)
          Column(
            children: [
              WalletRecordTile(
                record: WalletModel(currency: 'aud', amount: i * 3251),
                onTap: () {
                  showBottomDialog(context);
                },
              ),
              const Divider(
                color: ApplicationColors.dividerColor,
                thickness: _dividerThickness,
              ),
            ],
          )
      ],
    );
  }
}
