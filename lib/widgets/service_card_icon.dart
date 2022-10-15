import 'package:flutter/material.dart';

import '../utils/utils.dart';

class ServiceCardIcon extends StatelessWidget {
  const ServiceCardIcon({
    Key? key,
    required this.iconName,
    required this.iconSubtitle,
    required this.iconSize,
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
          const SizedBox(
            height: 12,
          ),
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
