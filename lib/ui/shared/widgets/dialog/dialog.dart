import 'package:flutter/material.dart';

Future<bool> onWillPop(BuildContext context) async {
  bool? exitResult = await showDialog(
    context: context,
    builder: (context) => _buildExitDialog(context),
  );
  return exitResult ?? false;
}

Future<bool?> showExitDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) => _buildExitDialog(context),
  );
}

AlertDialog _buildExitDialog(BuildContext context) {
  const yesText = 'Yes';
  const noText = 'No';
  const confirmText = 'Please confirm';
  const exitText = 'Please confirm';

  return AlertDialog(
    title: const Text(confirmText),
    content: const Text(exitText),
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.of(context).pop(false),
        child: const Text(noText),
      ),
      TextButton(
        onPressed: () => Navigator.of(context).pop(true),
        child: const Text(yesText),
      ),
    ],
  );
}