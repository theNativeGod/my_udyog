import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_udyog/constants.dart';
import 'package:my_udyog/views/hero.dart';

import 'download.dart';
import 'feature.dart';
import 'live_market_section.dart';
import 'one_stop_platform.dart';
import 'plans.dart';
import 'testimonials.dart';
import 'widgets/export.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const HeroSection(),
                FeatureSection(width: width),
                LiveMarketSection(width: width),
                TestimoniealsSection(width: width),
                const PlansSection(),
                OneStopPlatform(width: width),
                DownloadSection(width: width),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xffDAEBFF),
                  ),
                  margin: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 220,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LogoText(
                                  isBlack: true,
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                    'Empowering Growth, Cultivating Success'),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      padding: const EdgeInsets.all(8),
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                          'assets/images/facebook.png'),
                                    ),
                                    const SizedBox(width: 20),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      padding: const EdgeInsets.all(8),
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                          'assets/images/twitter.png'),
                                    ),
                                    const SizedBox(width: 20),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      padding: const EdgeInsets.all(8),
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                          'assets/images/instagram.png'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          FooterMenu(
                            headingText: 'Home',
                            menus: navMenu,
                          ),
                          FooterMenu(
                            headingText: 'Plans',
                            menus: plans.keys.toList(),
                          ),
                          FooterMenu(
                            headingText: 'Contact Us',
                            menus: contactUs,
                          ),
                        ],
                      ),
                      const SizedBox(height: 80),
                      const Text(
                        'All rights reserved. MyUdyog, 2024.',
                        style: TextStyle(color: Color(0xff003F88)),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Navbar(width: width),
        ],
      ),
    );
  }
}

class FooterMenu extends StatelessWidget {
  const FooterMenu({
    required this.headingText,
    required this.menus,
    super.key,
  });

  final String headingText;
  final List<String> menus;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headingText,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: const Color(0xff003F88),
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 20),
        ...menus
            .map((e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e,
                      style: const TextStyle(color: Color(0xff003F88)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ))
            .toList(),
      ],
    );
  }
}
