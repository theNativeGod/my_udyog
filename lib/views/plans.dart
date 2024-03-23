import 'dart:ui';

import 'package:flutter/material.dart';

import 'widgets/export.dart';

class PlansSection extends StatelessWidget {
  const PlansSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: width,
        ),
        Positioned(
          top: -80,
          left: 0,
          child: SizedBox(
            width: width * .2,
            child: Image.asset(
              'assets/images/back6.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 360,
          right: 0,
          child: SizedBox(
            width: width * .2,
            child: Image.asset(
              'assets/images/back7.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              const SectionHeading(
                  text: 'Tailored Plans for Every Business need'),
              const SizedBox(height: 20),
              const Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [
                  PlanBox(i: 0),
                  PlanBox(i: 1),
                  PlanBox(i: 2),
                ],
              ),
              const SizedBox(
                height: 140,
              ),
              Container(
                width: width,
                height: 350,
                color: const Color(0xffDAEBFF),
                alignment: Alignment.center,
                child: Stack(children: [
                  Positioned(
                    left: 0,
                    bottom: -40,
                    child: SizedBox(
                      width: width * .2,
                      child: Image.asset(
                        'assets/images/back8.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: const AlignmentDirectional(.94, -.5),
                      child: SizedBox(
                        width: 74,
                        height: 74,
                        child: Image.asset(
                          'assets/images/grid.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white38,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(24),
                                  color: Colors.white54,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 20,
                                ),
                                child: Text(
                                  'Your Network Is Your Net Worth!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xff003F88),
                                    fontSize: width < 700 ? 64 : 72,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 0,
                            left: -20,
                            child: Text(
                              '“',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff003F88),
                                fontSize: 120,
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: -70,
                            right: -20,
                            child: Text(
                              '”',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff003F88),
                                fontSize: 120,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
