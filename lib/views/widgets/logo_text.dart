import 'package:flutter/material.dart';
import 'package:my_udyog/view_models/scroll_provider.dart';
import 'package:provider/provider.dart';

class LogoText extends StatelessWidget {
  LogoText({
    this.isBlack,
    super.key,
  });

  bool? isBlack;

  @override
  Widget build(BuildContext context) {
    var scrollProvider = Provider.of<ScrollProvider>(context);
    return InkWell(
      onTap: () {
        Scrollable.ensureVisible(
          scrollProvider.heroKey.currentContext!,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 24, child: Image.asset('assets/images/logo.png')),
          const SizedBox(
            width: 8,
          ),
          Text(
            'MyUdyog',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: isBlack == true ? Colors.black : Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
