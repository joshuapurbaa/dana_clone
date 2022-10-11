import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Scaffold(
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
              const Image(
                image: AssetImage('assets/icons/logo.png'),
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
              const Image(
                image: AssetImage('assets/icons/card.png'),
                width: 28,
              ),
            ],
          ),
        ),
        actions: const [
          Image(
            image: AssetImage('assets/icons/message.png'),
            width: 28,
          ),
          SizedBox(width: 16)
        ],
      ),
    );
  }
}
