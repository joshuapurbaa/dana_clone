import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: DanaCloneTheme.whiteBg,
          height: 390,
          child: Stack(
            children: [
              Container(
                height: 205,
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
        const FeedCardWidget(),
        const ImageLoopSliderWidget(),
        const WhatsNewCardWidget(),
        const NearbyCardWidget(),
        const MoreForYouCardWidget(),
        const DanaProtectionCardWidget(),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }
}
