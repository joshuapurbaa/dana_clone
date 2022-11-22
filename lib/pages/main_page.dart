import 'package:dana_clone/provider/bottom_navigation_provider.dart';
import 'package:dana_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../utils/utils.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DanaCloneTheme.whiteBg,
      extendBody: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        toolbarHeight: kToolbarHeight + 1,
        elevation: 0,
        titleSpacing: 0,
        title: const AppBarTitleWidget(),
        actions: [
          Image(
            image: AssetLocations.iconLocation('message'),
            width: 35,
          ),
          const Gap(h: 16),
        ],
      ),
      body: Consumer<BottomNavProvider>(
        builder: (context, provider, child) {
          return ListOfPages.pages[provider.selectedIndex];
        },
      ),
      bottomNavigationBar: const SizedBox(
        height: 95,
        child: CustomBottomNavBar(),
      ),
    );
  }
}
