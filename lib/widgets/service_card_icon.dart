import 'package:flutter/material.dart';

import '../utils/utils.dart';

class ServiceCardIcon extends StatelessWidget {
  const ServiceCardIcon({
    Key? key,
    required this.iconName,
    required this.iconSubtitle,
  }) : super(key: key);

  final String iconName;
  final String iconSubtitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 100,
      child: Column(
        children: [
          Image(
            image: AssetLocations.iconLocation(iconName),
            width: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            iconSubtitle,
            style: textTheme.subtitle2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
