import 'package:flutter/cupertino.dart';

class AssetLocations {
  static ImageProvider iconLocation(String iconName) {
    final location = AssetImage('assets/icons/$iconName.png');
    return location;
  }

  static ImageProvider imageLocation(String imageName) {
    final location = AssetImage('assets/icons/$imageName.png');
    return location;
  }

  // static List pathName = [
  //   'electricity',
  //   'rewards',
  //   'emas',
  //   'goals',
  //   'item_digital',
  //   'pulsa',
  //   'dana_kaget',
  //   'view_all',
  // ];

  // static Map<String, String> locationAndName = {
  //   'electricity': 'Electricity',
  //   'rewards': 'Voucher A+\nRewards',
  //   'emas': 'Emas',
  //   'goals': 'DANA Goals',
  //   'item_digital': 'Item Digital',
  //   'pulsa': 'Pulsa & Data',
  //   'dana_kaget': 'DANA Kaget',
  //   'view_all': 'View All'
  // };
}
