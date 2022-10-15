import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class IconBottomNavBar extends StatelessWidget {
  const IconBottomNavBar({
    Key? key,
    required this.iconName,
    required this.label,
    required this.iconSize,
    required this.onTap,
  }) : super(key: key);

  final String iconName;
  final String label;
  final double iconSize;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.grey,
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetLocations.iconLocation(iconName),
              width: iconSize,
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.button!.copyWith(
                    color: DanaCloneTheme.grey,
                    letterSpacing: -0.2,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
