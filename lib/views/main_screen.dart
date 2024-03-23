import 'package:flutter/material.dart';
import 'package:my_udyog/constants.dart';
import 'package:my_udyog/views/hero.dart';

import 'feature.dart';
import 'live_market_section.dart';
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
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const HeroSection(),
                FeatureSection(width: width),
                LiveMarketSection(width: width),
                TestimoniealsSection(width: width),
                const PlansSection(),
              ],
            ),
          ),
          Navbar(width: width),
        ],
      ),
    );
  }
}
