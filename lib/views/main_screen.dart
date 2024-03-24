import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_udyog/constants.dart';
import 'package:my_udyog/view_models/scroll_provider.dart';
import 'package:my_udyog/views/hero.dart';
import 'package:provider/provider.dart';

import 'download.dart';
import 'feature.dart';
import 'footer.dart';
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
    var scrollProvider = Provider.of<ScrollProvider>(context);
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SingleChildScrollView(
            controller: scrollProvider.controller,
            child: Column(
              children: [
                HeroSection(key: scrollProvider.heroKey),
                FeatureSection(width: width, key: scrollProvider.featureKey),
                LiveMarketSection(width: width, key: scrollProvider.marketKey),
                TestimoniealsSection(width: width),
                PlansSection(key: scrollProvider.plansKey),
                OneStopPlatform(width: width),
                DownloadSection(width: width, key: scrollProvider.downloadKey),
                const FooterSection(),
              ],
            ),
          ),
          Navbar(width: width),
        ],
      ),
    );
  }
}
