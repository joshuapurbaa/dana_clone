import 'package:dana_clone/utils/theme.dart';
import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = DanaCloneTheme.themeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dana Clone',
      theme: theme,
      home: const Home(),
    );
  }
}
