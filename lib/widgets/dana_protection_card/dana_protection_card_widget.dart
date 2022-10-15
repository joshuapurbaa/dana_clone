import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class DanaProtectionCardWidget extends StatelessWidget {
  const DanaProtectionCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: DanaCloneTheme.grey.withOpacity(0.4),
          width: 0.3,
        ),
      ),
      margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetLocations.iconLocation('dana_protection'),
                      width: 40,
                    ),
                    const Gap(h: 5),
                    Text(
                      'DANA\nPROTECTION',
                      style: textTheme.headline3,
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('EXPLORE'),
                )
              ],
            ),
            const Gap(v: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HorizontalCaptionAndIcon(
                  iconName: 'money_back',
                  caption: 'Money-back\nGuarantee',
                ),
                HorizontalCaptionAndIcon(
                  iconName: 'secure_data',
                  caption: 'Secure Data\nPrivacy',
                ),
                HorizontalCaptionAndIcon(
                  iconName: 'live_assistance',
                  caption: '24/7 Live\nAssistance',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
