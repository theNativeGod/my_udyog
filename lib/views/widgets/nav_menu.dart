import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
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
          onTap: () {},
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
          onTap: () {},
          child: Text(
            'Download App',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            alignment: Alignment.center,
            child: Text('Signup/Login',
                style: Theme.of(context).textTheme.bodyMedium),
          ),
        ),
      ],
    );
  }
}
