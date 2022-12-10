import 'package:flutter/material.dart';
import 'post.dart';

class PostGreen extends StatelessWidget {
  const PostGreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Post(
      name: 'Pean',
      message: 'Weak reason, No action reuqired.',
      textReason: 'Report Detials',
      colorPrimary: Colors.greenAccent,
      colorPositive: Colors.greenAccent,
      textPositive: 'Keep',
      colorNegative: Colors.blueAccent,
      textNegative: 'Archive',
    );
  }
}