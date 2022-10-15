import 'package:dana_clone/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class TileWhatsNew extends StatelessWidget {
  const TileWhatsNew({
    Key? key,
    required this.iconLocation,
    required this.headline,
    required this.bodyText,
  }) : super(key: key);

  final String iconLocation;
  final String headline;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(
        left: 35,
        right: 20,
        bottom: 25,
      ),
      child: Row(
        children: [
          Image(
            image: AssetLocations.iconLocation(iconLocation),
            width: 32,
          ),
          const Gap(h: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headline,
                style: textTheme.headline5,
              ),
              const Gap(h: 5),
              Text(
                bodyText,
                style: textTheme.bodyText1,
              )
            ],
          )
        ],
      ),
    );
  }
}
