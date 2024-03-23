import 'package:flutter/material.dart';

class PlanDetail extends StatelessWidget {
  const PlanDetail({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                'assets/images/${text == '-' ? 'check_grey' : 'check'}.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Text(text),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
