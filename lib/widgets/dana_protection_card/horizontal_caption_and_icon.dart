import 'package:dana_clone/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class HorizontalCaptionAndIcon extends StatelessWidget {
  const HorizontalCaptionAndIcon({
    Key? key,
    required this.iconName,
    required this.caption,
  }) : super(key: key);

  final String iconName;
  final String caption;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Image(
          image: AssetLocations.iconLocation(iconName),
          width: 25,
        ),
        const Gap(h: 7),
        Text(
          caption,
          style: textTheme.caption,
        ),
      ],
    );
  }
}
