import 'package:flutter/material.dart';
import 'package:bouncing_widget/bouncing_widget.dart';

import '../../utils/utils.dart';

class ButtonPay extends StatelessWidget {
  const ButtonPay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      onPressed: () {},
      scaleFactor: 0.8,
      duration: const Duration(milliseconds: 100),
      child: Container(
        width: 85,
        height: 85,
        margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
        decoration: BoxDecoration(
          border: Border.all(
            color: DanaCloneTheme.lightGrey,
          ),
          color: DanaCloneTheme.forthBlue,
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetLocations.iconLocation('pay'),
              width: 32,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'PAY',
              style: Theme.of(context).textTheme.button!.copyWith(
                    color: DanaCloneTheme.white,
                    fontSize: 14,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
