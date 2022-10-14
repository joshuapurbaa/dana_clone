import 'package:dana_clone/widgets/icon_bottom_navbar.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: DanaCloneTheme.lightGrey,
              ),
            ),
          ),
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: const [
                IconBottomNavBar(
                  iconName: 'dana_nav_off',
                  label: 'Home',
                ),
                IconBottomNavBar(
                  iconName: 'history',
                  label: 'History',
                ),
                SizedBox(
                  width: 90,
                ),
                IconBottomNavBar(
                  iconName: 'pocket',
                  label: 'Pocket',
                ),
                IconBottomNavBar(
                  iconName: 'profile',
                  label: 'Me',
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(
                color: DanaCloneTheme.lightGrey,
              ),
              color: DanaCloneTheme.mainBlue,
              shape: BoxShape.circle,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetLocations.iconLocation('pay'),
                  width: 30,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'PAY',
                  style: Theme.of(context).textTheme.button!.copyWith(
                        color: DanaCloneTheme.white,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
