import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/constants.dart';
import '../../utils/image_path_svg.dart';

class DetailsTable extends StatelessWidget {
  const DetailsTable({Key? key, required this.details, this.flexWidth = 3.0}) : super(key: key);
  final Map<String, String> details;
  final double flexWidth;
  static const bottomPadding = 26.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: ApplicationSizes.paddingHorizontal,
      ),
      padding: const EdgeInsets.only(
        top: ApplicationSizes.paddingHorizontal,
        left: ApplicationSizes.paddingHorizontal,
        right: ApplicationSizes.paddingHorizontal,
      ),
      decoration: BoxDecoration(
        color: ApplicationColors.bottomDialogBgColor,
        borderRadius: BorderRadius.circular(ApplicationSizes.smallSizeRadius),
      ),
      child: Table(
        columnWidths: {
          0: const FlexColumnWidth(1),
          1: FlexColumnWidth(flexWidth),
        },
        children:
            details.entries.map((e) => buildTableRow(keyText: e.key, valueText: e.value)).toList(),
      ),
    );
  }

  TableRow buildTableRow({required String keyText, required String valueText}) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: bottomPadding),
          child: Text(
            '$keyText:',
            style: const TextStyle(
              fontSize: ApplicationSizes.smallTextSize,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: bottomPadding),
          child: Wrap(
            //crossAxisAlignment: CrossAxisAlignment.start,
            direction: Axis.horizontal,
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              Text(
                valueText,
                style: const TextStyle(
                  fontSize: ApplicationSizes.smallTextSize,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: ApplicationSizes.bigTextSize,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: valueText));
                  },
                  icon: SvgPicture.asset(SVGImagePaths.instance.copyIconSvg),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
