import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallet/ui/shared/widgets/text/info_text.dart';
import '../../core/models/deposit/details.dart';
import '../../core/provider/deposit_provider.dart';
import '../shared/utils/constants.dart';
import '../shared/widgets/table/details_table.dart';

class DepositPage extends HookConsumerWidget {
  const DepositPage({Key? key}) : super(key: key);
  static const _headerText = 'DEPOSIT';
  static const _emptySpace = 30.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String currency = ModalRoute.of(context)?.settings.arguments as String;
    final deposit = ref.watch(depositsProvider(currency));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        title: deposit.when(
          data: (data) {
            return Text(
              '$_headerText - ${data.code.toUpperCase()}',
              style: const TextStyle(
                fontSize: ApplicationSizes.bigTextSize,
                fontWeight: FontWeight.w500,
              ),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          error: (error, e) => Center(
            child: Text(error.toString()),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 0, //ApplicationSizes.paddingHorizontal,
          ),
          child: deposit.when(
            data: (data) {
              final tabController = useTabController(initialLength: data.details.length);
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: ApplicationSizes.paddingHorizontal,
                    ),
                    child: data.details.length > 1
                        ? TabBar(
                            //isScrollable: true,
                            controller: tabController,
                            tabs: data.details.map((e) => Tab(text: e.title)).toList(),
                          )
                        : const SizedBox.shrink(),
                  ),
                  const SizedBox(height: _emptySpace),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        for (var i = 0; i < data.details.length; i++)
                          buildTabView(context: context, details: data.details[i]),
                      ],
                    ),
                  ),
                ],
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            error: (error, e) => Center(
              child: Text(error.toString()),
            ),
          ),
        ),
      ),
    );
  }

  Column buildTabView({required BuildContext context, required Details details}) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              children: [
                DetailsTable(fields: details.fields),
              ],
            )),
        const Divider(
          thickness: ApplicationSizes.bigDividerThickness,
          color: ApplicationColors.dividerColor,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: ApplicationSizes.paddingHorizontal,
            ),
            child: InfoText(information: details.information),
          ),
        ),
      ],
    );
  }
}
