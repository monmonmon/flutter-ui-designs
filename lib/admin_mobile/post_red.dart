import 'package:flutter/material.dart';
import 'post.dart';

class PostRed extends StatelessWidget {
  const PostRed({super.key});
  @override
  Widget build(BuildContext context) {
    return const Post(
      name: 'Namaga Tema',
      message: 'Not recommended for publication',
      textReason: 'Pending reason',
      colorPrimary: Colors.deepOrangeAccent,
      colorPositive: Colors.blueAccent,
      textPositive: 'Publish',
      colorNegative: Colors.deepOrangeAccent,
      textNegative: 'Decline',
    );
  }
}