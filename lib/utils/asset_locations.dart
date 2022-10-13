import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetLocations {
  static ImageProvider iconLocation(String iconName) {
    final location = AssetImage('assets/icons/$iconName.png');
    return location;
  }

  static ImageProvider imageLocation(String imageName) {
    final location = AssetImage('assets/images/$imageName.png');
    return location;
  }

  static SvgPicture svgLocation(String iconName) {
    final location = SvgPicture.asset(
      'assets/svg/$iconName.svg',
      width: 30,
      cacheColorFilter: true,
    );
    return location;
  }
}
