import 'package:flutter/material.dart';

import 'widgets/export.dart';

class TestimoniealsSection extends StatelessWidget {
  const TestimoniealsSection({
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
          top: 0,
          left: 0,
          child: SizedBox(
            width: width * .2,
            child: Image.asset(
              'assets/images/back4.png',
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
              'assets/images/back5.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            const SectionHeading(text: 'Our Testimonials'),
            const SizedBox(height: 20),
            Container(
              width: width * .4,
              constraints: const BoxConstraints(minWidth: 350),
              alignment: Alignment.center,
              child: const Text(
                'Hear how MyUdyog has transformed businesses and empowered professionals across the agritech industry.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: width,
              height: 270 * 2 + 20,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 10),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 270,
                    child: ListView.separated(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: 5,
                      separatorBuilder: (ctx, i) => const SizedBox(width: 20),
                      itemBuilder: (ctx, i) => Container(
                        height: 270,
                        width: 384,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffDAEBFF),
                          border: Border.all(
                            color: Colors.white,
                            width: 10,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 270,
                    child: ListView.separated(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: 7,
                      separatorBuilder: (ctx, i) => const SizedBox(width: 20),
                      itemBuilder: (ctx, i) => Container(
                        height: 270,
                        width: 384,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffDAEBFF),
                          border: Border.all(
                            color: Colors.white,
                            width: 10,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ],
    );
  }
}
