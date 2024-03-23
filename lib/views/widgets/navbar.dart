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
      child: Container(
        height: 80,
        color: Colors.black12,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: width * .06, vertical: 0),
        alignment: Alignment.bottomCenter,
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
