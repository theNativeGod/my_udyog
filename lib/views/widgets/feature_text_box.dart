import 'package:flutter/material.dart';
import 'package:my_udyog/constants.dart';

class FeatureTextBox extends StatelessWidget {
  const FeatureTextBox({
    super.key,
    required this.width,
    required this.i,
  });

  final double width;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 414,
      width: (width - 160 - 40) / 2,

      constraints: const BoxConstraints(
        minWidth: 450,
        minHeight: 414,
      ),
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
      padding: const EdgeInsets.all(16),
      // alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff003F88),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${i + 1}/${brandFeatureHeadings.length}',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              brandFeatureHeadings[i],
              style: width < 700
                  ? Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Colors.white,
                      )
                  : Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Colors.white,
                      ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              brandFeatureDescriptions[i],
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
