import 'package:flutter/material.dart';
import 'package:wallet/ui/shared/widgets/text/info_text.dart';
import '../shared/utils/constants.dart';
import '../shared/widgets/table/details_table.dart';

class DepositPage extends StatefulWidget {
  const DepositPage({Key? key}) : super(key: key);
  static const _headerText = 'DEPOSIT - AUD';

  @override
  State<DepositPage> createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> with TickerProviderStateMixin {
  late final TabController _controller;

  //int _tab = 0;
  static const _tabPaymentText = 'PayID / Osko';
  static const _tabBankTransferText = 'Bank transfer';
  static const _emptySpace = 30.0;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios),
        elevation: 0,
        title: const Text(
          DepositPage._headerText,
          style: TextStyle(
            fontSize: ApplicationSizes.bigTextSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 0, //ApplicationSizes.paddingHorizontal,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: ApplicationSizes.paddingHorizontal,
                ),
                child: TabBar(
                  controller: _controller,
                  tabs: const [
                    Tab(text: _tabPaymentText),
                    Tab(text: _tabBankTransferText),
                  ],
                ),
              ),
              const SizedBox(height: _emptySpace),
              Expanded(
                child: TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    buildPayment(),
                    buildBankTransfer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPayment() {
    Map<String, String> map = {
      'PayID': 'pay@independentreserve.com',
      'Reference': '100073549758163',
    };

    String descriptionText =
        '• 	PayID / Osko deposits will be processed and credited to your account within 1 business day.\n\n'
        '• 	An AUD 2.50 processing fee will be debited from your Independent Reserve account for deposits below AUD 1,000.00\n\n'
        '• 	Your first PayID / Osko deposit may be delayed due to initial processing by your bank.\n\n'
        '• 	PayID / Osko deposits must be made from a debit account held in your own name. Credit card payments, or payments from accounts in different names will not be processed.\n\n'
        '• 	The Reference must be provided as a transaction description as shown above for funds to be credited to your account.';

    return buildInfoBox(info: map, description: descriptionText);
  }

  Widget buildBankTransfer() {
    Map<String, String> map = {
      'Account name': 'Independent Reserve\nPty Ltd',
      'BSB': '806 043',
      'Account number': '100242639',
      'Reference': 'ATFPMRL',
    };

    String descriptionText = 'We do not accept cash deposits made at a branch.\n\n'
        'Deposits of AUD 100.00 and above are free. An AUD 0.99 processing fee will be debited from your Independent Reserve account for deposits below this amount. Electronic Funds Transfer deposits are usually processed within one business day, but please allow at least two business days before contacting our support staff. Please note that banks do not process Electronic Funds Transfer transactions on weekends or public holidays.\n\n'
        'Electronic Funds Transfer Payments must be made from a debit account held in your own name. Credit card payments, or payments from accounts in different names will not be processed.\n\n'
        'The Reference must be provided exactly as shown for funds to be credited to your account';

    return buildInfoBox(info: map, description: descriptionText);
  }

  Column buildInfoBox({required Map<String, String> info, required String description}) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              children: [
                DetailsTable(details: info),
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
            child: InfoText(description: description),
          ),
        ),
      ],
    );
  }
}
