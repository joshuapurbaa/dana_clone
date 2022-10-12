import 'package:dana_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/utils.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;

    return Scaffold(
      backgroundColor: DanaCloneTheme.whiteBg,
      extendBody: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        elevation: 0,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Image(
                image: AssetLocations.iconLocation('logo'),
                width: 28,
              ),
              const SizedBox(width: 8),
              Text(
                'Rp',
                style: primaryTextTheme.caption,
              ),
              const SizedBox(width: 8),
              Text(
                '10.000.000',
                style: primaryTextTheme.headline5,
              ),
              const SizedBox(width: 8),
              Image(
                image: AssetLocations.iconLocation('card'),
                width: 28,
              ),
            ],
          ),
        ),
        actions: [
          Image(
            image: AssetLocations.iconLocation('message'),
            width: 30,
          ),
          const SizedBox(width: 16)
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: DanaCloneTheme.whiteBg,
            height: 410,
            child: Stack(
              children: [
                Container(
                  height: 180,
                  color: DanaCloneTheme.mainBlue,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HeaderWidget(),
                    ServiceCardWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
