import 'package:flutter/material.dart';

import '../utils/utils.dart';
import 'widgets.dart';

class WhatsNewCardWidget extends StatelessWidget {
  const WhatsNewCardWidget({
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
                      'What\'s New',
                      style: primaryTextTheme.headline4,
                    ),
                    Text(
                      'The best news of the week!',
                      style: textTheme.bodyText2,
                    )
                  ],
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image(
                        image: AssetLocations.iconLocation('promos'),
                        width: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('VIEW PROMOS'),
                    ],
                  ),
                )
              ],
            ),
          ),
          const TileWhatsNew(
            iconLocation: 'handphone',
            headline: 'Pakai DANA di Thailand',
            bodyText: 'Belanja praktis & aman!',
          ),
          const TileWhatsNew(
            iconLocation: 'nabung_emas',
            headline: 'Nabung eMAS di DANA',
            bodyText: 'Mulai Rp3.000 setiap hari!',
          ),
          const TileWhatsNew(
            iconLocation: 'kirim_uang',
            headline: 'Kirim Uang Berhadiah',
            bodyText: 'Cek caranya yuk!',
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('VIEW ALL NEWS'),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
