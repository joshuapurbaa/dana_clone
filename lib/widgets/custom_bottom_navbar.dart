import 'package:flutter/material.dart';

import '../utils/utils.dart';
import 'widgets.dart';

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
                  iconSize: 25,
                ),
                IconBottomNavBar(
                  iconName: 'history',
                  label: 'History',
                  iconSize: 25,
                ),
                SizedBox(
                  width: 90,
                ),
                IconBottomNavBar(
                  iconName: 'pocket',
                  label: 'Pocket',
                  iconSize: 30,
                ),
                IconBottomNavBar(
                  iconName: 'profile',
                  label: 'Me',
                  iconSize: 30,
                ),
              ],
            ),
          ),
        ),
        const Align(
          alignment: Alignment.center,
          child: ButtonPay(),
        ),
      ],
    );
  }
}
