import 'package:flutter/material.dart';
import '../../../../core/models/deposit/information.dart';
import '../../utils/constants.dart';

class InfoText extends StatelessWidget {
  const InfoText({Key? key, required this.information}) : super(key: key);
  final List<Information> information;
  static const _headerText = 'Important';
  static const _emptySpace = 20.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const SizedBox(height: _emptySpace),
        Text('$_headerText:',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(fontSize: ApplicationSizes.bigTextSize, fontWeight: FontWeight.w500)),
        const SizedBox(height: _emptySpace),
        ...information.map((info) => buildParagraph(context, info)).toList(),
      ],
    );
  }

  Text buildParagraph(BuildContext context, Information info) {
    return Text(
      '${info.description}\n\n',
      style: Theme.of(context)
          .textTheme
          .bodyText1
          ?.copyWith(fontSize: ApplicationSizes.smallTextSize, fontWeight: FontWeight.w400),
    );
  }
}
