import 'package:flutter/material.dart';
import 'side_navigation.dart';
import 'post_list.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Designs',
      theme: ThemeData.light(),
      home: _AdminMobilePage(),
    );
  }
}

class _AdminMobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('test')),
      body: Row(
        children: const [
          SideNavigation(),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: PostList(),
          ),
        ],
      ),
    );
  }
}