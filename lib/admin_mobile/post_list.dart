import 'package:flutter/material.dart';
import 'post_header.dart';
import 'post_green.dart';
import 'post_red.dart';

class PostList extends StatefulWidget {
  const PostList({super.key});

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const PosttsHeader(),
        Expanded(
          child: ListView(
            children: const [
              PostGreen(),
              PostRed(),
              PostGreen(),
              PostRed(),
              PostGreen(),
              PostRed(),
            ],
          ),
        ),
      ],
    );
  }
}