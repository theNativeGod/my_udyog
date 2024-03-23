import 'package:flutter/material.dart';

import 'widgets/export.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
            width: width * .2,
            child: Image.asset(
              'assets/images/back0.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 700,
          width: width,
          padding: const EdgeInsets.only(
            left: 80,
            right: 80,
            top: 80,
          ),
          alignment: Alignment.topCenter,
          child: FeaturePageView(width: width),
        ),
      ],
    );
  }
}
