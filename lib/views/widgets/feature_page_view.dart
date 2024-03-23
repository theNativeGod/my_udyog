import 'package:flutter/material.dart';

import '../../constants.dart';
import 'export.dart';

class FeaturePageView extends StatefulWidget {
  const FeaturePageView({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<FeaturePageView> createState() => _FeaturePageViewState();
}

class _FeaturePageViewState extends State<FeaturePageView> {
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SectionHeading(
              text: 'Features',
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    _controller.animateToPage(
                      ((_controller.page as int) - 1),
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOutCubic,
                    );
                  },
                  child: Container(
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
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    _controller.animateToPage(
                      ((_controller.page as int) + 1),
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOutCubic,
                    );
                  },
                  child: Container(
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
                ),
              ],
            ),
            widget.width < 700
                ? SizedBox()
                : Text(
                    'Features',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: Colors.white,
                        ),
                  )
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 500,
          width: widget.width,
          child: PageView.builder(
              controller: _controller,
              pageSnapping: true,
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              itemCount: brandFeatureHeadings.length,
              itemBuilder: (context, i) {
                return Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  runAlignment: WrapAlignment.spaceEvenly,
                  children: [
                    FeatureTextBox(width: widget.width, i: i),
                    FeatureImageBox(width: widget.width, i: i)
                  ],
                );
              }),
        ),
      ],
    );
  }
}
