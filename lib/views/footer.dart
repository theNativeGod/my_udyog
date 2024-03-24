import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../view_models/scroll_provider.dart';
import 'widgets/export.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var scrollProvider = Provider.of<ScrollProvider>(context);
    return Container(
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
                    const Text('Empowering Growth, Cultivating Success'),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.center,
                          child: Image.asset('assets/images/facebook.png'),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.center,
                          child: Image.asset('assets/images/twitter.png'),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.center,
                          child: Image.asset('assets/images/instagram.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              FooterMenu(
                headingText: 'Home',
                menus: navMenu,
                onTap: (e) {
                  var key;
                  switch (e) {
                    case 'Features':
                      key = scrollProvider.featureKey;
                      break;
                    case 'Market Price':
                      key = scrollProvider.marketKey;
                      break;
                    case 'Plans':
                      key = scrollProvider.plansKey;
                      break;
                    case 'Download App':
                      key = scrollProvider.downloadKey;
                      break;
                    default:
                      key = scrollProvider.heroKey;
                  }
                  Scrollable.ensureVisible(key.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                },
              ),
              FooterMenu(
                headingText: 'Plans',
                menus: plans.keys.toList(),
                onTap: (e) {
                  Scrollable.ensureVisible(
                      scrollProvider.plansKey.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                },
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
    );
  }
}

class FooterMenu extends StatelessWidget {
  const FooterMenu({
    required this.headingText,
    required this.menus,
    this.onTap,
    super.key,
  });

  final String headingText;
  final List<String> menus;
  final onTap;

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
                    InkWell(
                      onTap: () => onTap(e),
                      child: Text(
                        e,
                        style: const TextStyle(color: Color(0xff003F88)),
                      ),
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
