import 'package:flutter/material.dart';

import '../widgets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          IconSubtitleHeader(
            iconName: 'scan',
            iconSubtitle: 'Scan',
          ),
          IconSubtitleHeader(
            iconName: 'top_up',
            iconSubtitle: 'Top Up',
          ),
          IconSubtitleHeader(
            iconName: 'send',
            iconSubtitle: 'Send',
          ),
          IconSubtitleHeader(
            iconName: 'request',
            iconSubtitle: 'Request',
          ),
        ],
      ),
    );
  }
}
