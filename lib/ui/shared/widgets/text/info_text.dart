import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class InfoText extends StatelessWidget {
  const InfoText({Key? key, required this.description}) : super(key: key);
  final String description;
  static const _headerText = 'Important';
  static const _emptySpace = 20.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: _emptySpace),
        Text('$_headerText:', style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(fontSize: ApplicationSizes.bigTextSize, fontWeight: FontWeight.w500)),
        const SizedBox(height: _emptySpace),
        Text(description,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(fontSize: ApplicationSizes.smallTextSize, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
