import 'package:flutter/material.dart';
import 'colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have Account?',
          style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: kTextColorSecondary),
        ),
        const SizedBox(width: 4),
        TextButton(
          onPressed: () {},
          child: Text(
            'Sign up',
            style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: kTextColorPrimary),
          ),
        ),
      ],
    );
  }
}