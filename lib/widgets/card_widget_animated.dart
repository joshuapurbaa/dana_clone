import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CardWidgetAnimated extends StatefulWidget {
  const CardWidgetAnimated({
    Key? key,
  }) : super(key: key);

  @override
  State<CardWidgetAnimated> createState() => _CardWidgetAnimatedState();
}

class _CardWidgetAnimatedState extends State<CardWidgetAnimated>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _positionAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _positionAnimation = AlignmentTween(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      }
      if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _positionAnimation,
      builder: (context, child) {
        return Stack(
          children: [
            Align(
              alignment: _positionAnimation.value,
              child: Image(
                image: AssetLocations.iconLocation('card'),
                width: 27,
              ),
            ),
          ],
        );
      },
    );
  }
}
