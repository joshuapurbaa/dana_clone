import 'package:flutter/material.dart';

import '../utils/utils.dart';
import 'widgets.dart';

class FriendFeedList1 extends StatelessWidget {
  const FriendFeedList1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        const IconWithAnimationWidget(
          iconName: 'friend_1',
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'Your Friend',
              style: textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: ' just received',
                  style: textTheme.headline6,
                ),
                TextSpan(
                  text: ' Cashback',
                  style: textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: ' from',
                  style: textTheme.headline6,
                ),
                TextSpan(
                  text: ' Merchant',
                  style: textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: DanaCloneTheme.orange,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
