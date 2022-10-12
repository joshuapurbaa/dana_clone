import 'package:dana_clone/utils/utils.dart';
import 'package:flutter/material.dart';

class FeedCardWidget extends StatelessWidget {
  const FeedCardWidget({
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
      margin: const EdgeInsets.only(left: 16, top: 10, right: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Feed',
                      style: primaryTextTheme.headline4,
                    ),
                    Text(
                      'Find out what your friends up to!',
                      style: textTheme.bodyText2,
                    )
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('EXPLORE'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 25,
            ),
            child: Row(
              children: [
                Image(
                  image: AssetLocations.iconLocation('friend_2'),
                  width: 32,
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
            ),
          )
        ],
      ),
    );
  }
}
