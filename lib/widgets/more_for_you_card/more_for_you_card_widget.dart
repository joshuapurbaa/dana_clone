import 'package:dana_clone/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class MoreForYouCardWidget extends StatelessWidget {
  const MoreForYouCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
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
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'More For You',
                      style: primaryTextTheme.headline4,
                    ),
                    Text(
                      'Want more good stuff? Take a look!',
                      style: textTheme.bodyText2,
                    )
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('VIEW ALL'),
                )
              ],
            ),
            const Gap(v: 16),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetLocations.imageLocation('promo_voucher'),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 110,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Promo Voucher',
                        style: textTheme.headline2,
                      ),
                      Text(
                        'Choose and claim the most',
                        style: textTheme.subtitle2!.copyWith(
                          color: DanaCloneTheme.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.2,
                        ),
                      ),
                      Text(
                        'wanted DANA vouchers!',
                        style: textTheme.subtitle2!.copyWith(
                          color: DanaCloneTheme.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.2,
                        ),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  top: 0,
                  bottom: 0,
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: DanaCloneTheme.thirdBlue,
                    radius: 15,
                    child: Icon(
                      Icons.chevron_right_rounded,
                      size: 30,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
