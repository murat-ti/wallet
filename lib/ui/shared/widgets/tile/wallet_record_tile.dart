import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/models/wallet_model.dart';
import '../../utils/constants.dart';
import '../../utils/image_path_svg.dart';

class WalletRecordTile extends StatelessWidget {
  final WalletModel record;
  final Function()? onTap;

  const WalletRecordTile({
    Key? key,
    required this.record,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: buildSvg(record.currency),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${record.currency.toUpperCase()} | ${Currencies.title[record.currency]}'),
          Text('\$${number.format(record.amount)}'),
        ],
      ),
      onTap: onTap,
    );
  }

  Widget buildSvg(String flag) {
    return SvgPicture.asset(SVGImagePaths.instance.toFlagSvg(flag));
  }
}
