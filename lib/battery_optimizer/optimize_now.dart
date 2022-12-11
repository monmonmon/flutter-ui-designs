import 'package:flutter/material.dart';
import 'constants.dart';

class OptimizeNow extends StatelessWidget {
  const OptimizeNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorPurple,
          padding: const EdgeInsets.symmetric(horizontal: 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: () {},
        child: const Text('Optimize Now', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}