import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../utils/utils.dart';

class TileWithAnimation extends StatelessWidget {
  const TileWithAnimation({
    Key? key,
    required this.iconName,
  }) : super(key: key);

  final String iconName;

  @override
  Widget build(BuildContext context) {
    return LoopAnimationBuilder(
      tween: ColorTween(
        begin: Colors.transparent,
        end: Colors.redAccent,
      ),
      duration: const Duration(seconds: 3),
      builder: (context, value, child) {
        return Container(
          height: 38,
          width: 38,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: value,
          ),
          child: child,
        );
      },
      curve: Curves.easeInQuint,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetLocations.iconLocation(iconName),
              width: 32,
            ),
          ),
        ],
      ),
    );
  }
}
