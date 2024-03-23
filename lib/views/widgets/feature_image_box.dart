import 'package:flutter/material.dart';

class FeatureImageBox extends StatelessWidget {
  const FeatureImageBox({
    super.key,
    required this.width,
    required this.i,
  });

  final double width;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (width - 160 - 40) / 2,
      constraints: const BoxConstraints(
        minWidth: 450,
        minHeight: 414,
      ),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      padding: const EdgeInsets.all(16),
      child: Image.asset(
        'assets/images/f$i.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
