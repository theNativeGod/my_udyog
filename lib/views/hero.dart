import 'package:flutter/material.dart';
import 'package:my_udyog/view_models/scroll_provider.dart';
import 'package:provider/provider.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    var scrollProvider = Provider.of<ScrollProvider>(context);
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        color: Color(0xff172B4D),
        image: DecorationImage(
          image: AssetImage('assets/images/hero.png'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.center,
      child: Expanded(
        child: Container(
          color: Colors.black.withOpacity(.7),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 40),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Empowering Growth, Cultivating Success',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 570,
                    child: Text(
                      textAlign: TextAlign.center,
                      'At MyUdyog, we\'re committed to transforming the Agri-trade sector by giving companies a vibrant platform that allows them to grow. Our goal is to provide creative solutions that enable agricultural stakeholders and promote prosperity, growth, and sustainability. Come along as we help to shape India\’s trading future.',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Scrollable.ensureVisible(
                      scrollProvider.featureKey.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xff003F88),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text(
                    'Explore',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
