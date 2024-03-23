import 'package:flutter/material.dart';

import '../../constants.dart';
import 'export.dart';

class PlanBox extends StatelessWidget {
  const PlanBox({
    required this.i,
    super.key,
  });

  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 384,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 10),
            blurRadius: 20,
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        Container(
          width: double.infinity,
          height: 176,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: const LinearGradient(
              colors: [
                Color(0xff94C6E1),
                Color(0xff04428A),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                child: Image.asset(
                  'assets/images/plan${i + 1}.png',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                plans.keys.elementAt(i),
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 36,
        ),
        ...plans.entries.elementAt(i).value.map((e) {
          return PlanDetail(text: e);
        }).toList(),
      ]),
    );
  }
}
