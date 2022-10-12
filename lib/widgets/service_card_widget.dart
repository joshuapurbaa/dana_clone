import 'package:dana_clone/widgets/service_card_icon.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    final textTheme = Theme.of(context).textTheme;
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: DanaCloneTheme.grey.withOpacity(0.4),
          width: 0.3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 35, 16, 10),
            child: Row(
              children: [
                Image(
                  image: AssetLocations.iconLocation('coupon'),
                  width: 40,
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DANA Deals',
                      style: primaryTextTheme.headline4,
                    ),
                    Text(
                      'Jajan Hemat s/d 43%',
                      style: textTheme.subtitle1,
                    )
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'SERBU!',
                    style: primaryTextTheme.button,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 22, right: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              textBaseline: TextBaseline.ideographic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Column(
                  children: const [
                    ServiceCardIcon(
                      iconName: 'electricity',
                      iconSubtitle: 'Electricity',
                    ),
                    ServiceCardIcon(
                      iconName: 'item_digital',
                      iconSubtitle: 'Item Digital',
                    ),
                  ],
                ),
                Column(
                  children: const [
                    ServiceCardIcon(
                      iconName: 'rewards',
                      iconSubtitle: 'Voucher A+\nRewards',
                    ),
                    ServiceCardIcon(
                      iconName: 'pulsa',
                      iconSubtitle: 'Pulsa &\nData',
                    ),
                  ],
                ),
                Column(
                  children: const [
                    ServiceCardIcon(
                      iconName: 'emas',
                      iconSubtitle: 'Emas',
                    ),
                    ServiceCardIcon(
                      iconName: 'dana_kaget',
                      iconSubtitle: 'DANA Kaget',
                    ),
                  ],
                ),
                Column(
                  children: const [
                    ServiceCardIcon(
                      iconName: 'goals',
                      iconSubtitle: 'DANA Goals',
                    ),
                    ServiceCardIcon(
                      iconName: 'view_all',
                      iconSubtitle: 'View All',
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}