import 'package:dana_clone/widgets/gap.dart';
import 'package:dana_clone/widgets/service_card/service_card_icon.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

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
            padding: const EdgeInsets.fromLTRB(45, 34, 16, 15),
            child: Row(
              children: [
                Image(
                  image: AssetLocations.iconLocation('coupon'),
                  width: 45,
                ),
                const Gap(h: 25),
                Expanded(
                  child: Column(
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
                ),
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
          Padding(
            padding: const EdgeInsets.only(
              bottom: 12,
              left: 22,
              right: 22,
            ),
            child: Column(
              children: [
                Row(
                  textBaseline: TextBaseline.ideographic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: const [
                    ServiceCardIcon(
                      iconName: 'electricity',
                      iconSubtitle: 'Electricity',
                    ),
                    ServiceCardIcon(
                      iconName: 'rewards',
                      iconSubtitle: 'Voucher A+\nRewards',
                    ),
                    ServiceCardIcon(
                      iconName: 'emas',
                      iconSubtitle: 'eMAS',
                    ),
                    ServiceCardIcon(
                      iconName: 'goals',
                      iconSubtitle: 'DANA Goals',
                    ),
                  ],
                ),
                const Gap(),
                Row(
                  textBaseline: TextBaseline.ideographic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: const [
                    ServiceCardIcon(
                      iconName: 'item_digital',
                      iconSubtitle: 'Item Digital',
                      iconSize: 25,
                    ),
                    ServiceCardIcon(
                      iconName: 'pulsa',
                      iconSubtitle: 'Pulsa &\nData',
                      iconSize: 22,
                    ),
                    ServiceCardIcon(
                      iconName: 'dana_kaget',
                      iconSubtitle: 'DANA Kaget',
                      iconSize: 25,
                    ),
                    ServiceCardIcon(
                      iconName: 'view_all',
                      iconSubtitle: 'View All',
                      iconSize: 30,
                    )
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
