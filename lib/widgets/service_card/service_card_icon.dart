import 'package:dana_clone/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class ServiceCardIcon extends StatelessWidget {
  const ServiceCardIcon({
    Key? key,
    required this.iconName,
    required this.iconSubtitle,
    this.iconSize = 40,
  }) : super(key: key);

  final String iconName;
  final String iconSubtitle;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Column(
        children: [
          Image(
            image: AssetLocations.iconLocation(iconName),
            width: iconSize,
          ),
          const Gap(v: 12),
          Text(
            iconSubtitle,
            style: textTheme.subtitle2,
            textAlign: TextAlign.center,
            softWrap: false,
          ),
        ],
      ),
    );
  }
}
