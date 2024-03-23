import 'package:flutter/material.dart';

import 'widgets/export.dart';

class LiveMarketSection extends StatelessWidget {
  const LiveMarketSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: width,
        ),
        Positioned(
          top: -40,
          right: 0,
          child: SizedBox(
            width: width * .2,
            child: Image.asset(
              'assets/images/back1.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 140,
          left: 0,
          child: SizedBox(
            width: width * .2,
            child: Image.asset(
              'assets/images/back2.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: -80,
          right: 0,
          child: SizedBox(
            width: width * .2,
            child: Image.asset(
              'assets/images/back3.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              const SectionHeading(text: 'Live Market prices'),
              const SizedBox(height: 20),
              Container(
                width: width * .4,
                constraints: const BoxConstraints(minWidth: 350),
                alignment: Alignment.center,
                child: const Text(
                  'Real-time commodity rates so you can make well-informed decisions for your everyday operations.',
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: width * .6,
                constraints: const BoxConstraints(minWidth: 450),
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 20,
                          spreadRadius: 1,
                          color: Colors.black12,
                          offset: Offset(0, 10))
                    ]),
                alignment: Alignment.center,
                child: Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/images/table.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
