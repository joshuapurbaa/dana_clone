import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class ImageLoopSliderWidget extends StatefulWidget {
  const ImageLoopSliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageLoopSliderWidget> createState() => _ImageLoopSliderWidgetState();
}

class _ImageLoopSliderWidgetState extends State<ImageLoopSliderWidget> {
  List<String> imageName = [
    'bayar_tagihan',
    'beli_voucher',
    'cobain_semua',
    'danamon',
    'emas',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageName.length,
      itemBuilder: (context, index, realIndex) {
        final name = imageName[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.only(top: 12, left: 12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetLocations.imageLocation(name),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlayCurve: Curves.easeInOutCirc,
        autoPlayInterval: const Duration(seconds: 3),
        viewportFraction: 0.81,
        height: 162,
        enableInfiniteScroll: true,
        initialPage: 2,
        autoPlay: true,
      ),
    );
  }
}
