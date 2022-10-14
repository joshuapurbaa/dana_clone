import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({
    super.key,
    this.v = 0.0,
    this.h = 0.0,
  });

  final double v;
  final double h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // v = Vertical
      // h = Horizontal
      height: v,
      width: h,
    );
  }
}
