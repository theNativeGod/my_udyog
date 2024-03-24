import 'package:flutter/material.dart';

import 'widgets/export.dart';

class DownloadSection extends StatelessWidget {
  const DownloadSection({
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
          top: -40,
          bottom: 0,
          right: 0,
          left: 0,
          child: Align(
            alignment: const AlignmentDirectional(-1, -1),
            child: Container(
              height: width * .3,
              constraints: const BoxConstraints(
                minHeight: 160,
              ),
              child: Image.asset(
                'assets/images/logo_big.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: -40,
          bottom: 0,
          right: 0,
          left: 0,
          child: Align(
            alignment: const AlignmentDirectional(1, -1),
            child: Container(
              height: width * .3,
              constraints: const BoxConstraints(
                minHeight: 160,
              ),
              child: Image.asset(
                'assets/images/logo_big_2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: SectionHeading(text: 'Download Now from the store'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: width * .15,
                      width: width * .15,
                      constraints: const BoxConstraints(
                        minWidth: 160,
                        minHeight: 160,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              color: Colors.black12,
                            )
                          ]),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      child: Image.asset('assets/images/qr.png',
                          fit: BoxFit.cover),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff003F88),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: const Text(
                        'Play Store',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: width * .1,
                ),
                Column(
                  children: [
                    Container(
                      height: width * .15,
                      width: width * .15,
                      constraints: const BoxConstraints(
                        minWidth: 160,
                        minHeight: 160,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              color: Colors.black12,
                            )
                          ]),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      child: Image.asset('assets/images/qr.png',
                          fit: BoxFit.cover),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff003F88),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: const Text(
                        'App Store',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 60),
          ],
        ),
      ],
    );
  }
}
