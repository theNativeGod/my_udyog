import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_models/scroll_provider.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var scrollProvider = Provider.of<ScrollProvider>(context);
    return SizedBox(
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Scrollable.ensureVisible(
                scrollProvider.featureKey.currentContext!,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'Features',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          InkWell(
            onTap: () {
              Scrollable.ensureVisible(
                scrollProvider.marketKey.currentContext!,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'Market Price',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          InkWell(
            onTap: () {
              Scrollable.ensureVisible(
                scrollProvider.plansKey.currentContext!,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'Plans',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          InkWell(
            onTap: () {
              Scrollable.ensureVisible(
                scrollProvider.downloadKey.currentContext!,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'Download App',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          // const SizedBox(
          //   width: 30,
          // ),
          // InkWell(
          //   onTap: () {},
          //   child: Container(
          //     height: 36,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(4),
          //     ),
          //     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          //     alignment: Alignment.center,
          //     child: Text('Signup/Login',
          //         style: Theme.of(context).textTheme.bodyMedium),
          //   ),
          // ),
        ],
      ),
    );
  }
}
