import 'package:dana_clone/provider/bottom_navigation_provider.dart';
import 'package:dana_clone/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = DanaCloneTheme.themeData();
    return ChangeNotifierProvider(
      create: (context) => BottomNavigationProvider(),
      child: MaterialApp(
        builder: (context, child) => ResponsiveWrapper.builder(
          child,
          defaultScale: true,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Dana Clone',
        theme: theme,
        home: const Home(),
      ),
    );
  }
}
