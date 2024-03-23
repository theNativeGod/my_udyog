import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_udyog/views/hero.dart';

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
                Container(
                  width: width,
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 80,
                  ),
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Features',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 20,
                                        offset: Offset(0, 10),
                                      )
                                    ]),
                                alignment: Alignment.center,
                                child: const Icon(Icons.arrow_back),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 20,
                                        offset: Offset(0, 10),
                                      )
                                    ]),
                                alignment: Alignment.center,
                                child: const Icon(Icons.arrow_forward),
                              ),
                            ],
                          ),
                          Text(
                            'Features',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  color: Colors.white,
                                ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 414,
                        width: (width - 160 - 40) / 2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ]),
                        padding: EdgeInsets.all(16),
                        // alignment: Alignment.center,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff003F88),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 16,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '3/12',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                              Text(
                                '24*7 Business Opportunities',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
