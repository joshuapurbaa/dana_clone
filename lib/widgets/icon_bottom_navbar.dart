import 'package:flutter/material.dart';

import '../utils/utils.dart';

class IconBottomNavBar extends StatelessWidget {
  const IconBottomNavBar({
    Key? key,
    required this.iconName,
    required this.label,
  }) : super(key: key);

  final String iconName;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.grey,
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Image(
                image: AssetLocations.iconLocation(iconName),
                width: 22,
              ),
              const SizedBox(
                height: 5,
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
      ),
    );
  }
}
