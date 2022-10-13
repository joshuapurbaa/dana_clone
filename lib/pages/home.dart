import 'package:dana_clone/provider/bottom_navigation_provider.dart';
import 'package:dana_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../utils/utils.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;

    return Consumer<BottomNavigationProvider>(
      builder: (context, provider, child) {
        final selectedIndex = provider.selectedIndex;
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
                    '0',
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
                height: 400,
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
          ),
          bottomNavigationBar: BottomNavigationBar(
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            selectedItemColor: Colors.black,
            currentIndex: selectedIndex,
            onTap: (index) {
              provider.onSelected(index);
            },
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Image(
                  image: selectedIndex == 0
                      ? AssetLocations.iconLocation('dana_nav_on')
                      : AssetLocations.iconLocation('dana_nav_off'),
                  width: 30,
                ),
              ),
              BottomNavigationBarItem(
                label: 'History',
                icon: Image(
                  image: AssetLocations.iconLocation('history'),
                  width: 30,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Pocket',
                icon: Image(
                  image: AssetLocations.iconLocation('pocket'),
                  width: 30,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Me',
                icon: Image(
                  image: selectedIndex == 3
                      ? AssetLocations.iconLocation('profile_on')
                      : AssetLocations.iconLocation('profile'),
                  width: 30,
                ),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            padding: const EdgeInsets.all(8.0),
            height: 100,
            width: 100,
            child: FloatingActionButton(
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AssetLocations.svgLocation('pay'),
                  const Text('Pay'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
