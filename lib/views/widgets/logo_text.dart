import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  const LogoText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedBox(width: 24, child: Image.asset('assets/images/logo.png')),
      const SizedBox(
        width: 8,
      ),
      Text(
        'MyUdyog',
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
      )
    ]);
  }
}
