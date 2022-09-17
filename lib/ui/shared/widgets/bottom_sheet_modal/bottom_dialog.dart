import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../core/navigation/navigation_constants.dart';
import '../../../../core/navigation/navigation_service.dart';
import '../../utils/constants.dart';

void showBottomDialog(BuildContext context) {
  const borderRadius = 15.0;
  const blurSigma = 2.0;

  showModalBottomSheet<void>(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(borderRadius),
      ),
    ),
    backgroundColor: ApplicationColors.bottomDialogBgColor,
    //backgroundColor: Colors.transparent,
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
      child: _buildBottomDialog(context),
    ),
  );
}

Widget _buildBottomDialog(BuildContext context) {
  const depositText = 'Deposit';
  const cancelText = 'Cancel';
  const dialogHeight = 218.0;

  TextStyle? textStyle =
      Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: ApplicationSizes.bigTextSize, fontWeight: FontWeight.w400);

  return SizedBox(
    height: dialogHeight,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        buildThinLine(),
        TextButton(
          child: Text(depositText, style: textStyle),
          onPressed: () {
            Navigator.of(context).pop();
            NavigationService.instance.navigateToPage(path: NavigationConstants.depositView);
          },
        ),
        const Divider(
          thickness: ApplicationSizes.bigDividerThickness,
          color: ApplicationColors.scaffoldBackgroundColor,
        ),
        TextButton(
          child: Text(cancelText, style: textStyle),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    ),
  );
}

Padding buildThinLine() {
  const lineHeight = 4.0;
  const lineWidth = 50.0;
  const linePadding = 15.0;
  const lineRadius = 12.0;

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: linePadding),
    child: Center(
      child: Container(
        height: lineHeight,
        width: lineWidth,
        decoration: BoxDecoration(
          color: ApplicationColors.thinLineColor,
          borderRadius: BorderRadius.circular(lineRadius),
        ),
      ),
    ),
  );
}
