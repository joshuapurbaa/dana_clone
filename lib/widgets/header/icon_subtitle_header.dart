import 'package:dana_clone/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class IconSubtitleHeader extends StatelessWidget {
  const IconSubtitleHeader({
    Key? key,
    required this.iconName,
    required this.iconSubtitle,
  }) : super(key: key);

  final String iconName;
  final String iconSubtitle;

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Column(
      children: [
        Image(
          image: AssetLocations.iconLocation(iconName),
          width: 40,
        ),
        const Gap(v: 5),
        Text(
          iconSubtitle,
          style: primaryTextTheme.subtitle1,
        ),
      ],
    );
  }
}
