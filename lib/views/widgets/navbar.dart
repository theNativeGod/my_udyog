import 'package:flutter/material.dart';

import 'export.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(horizontal: width * .06),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LogoText(),
            NavMenu(),
          ],
        ),
      ),
    );
  }
}
