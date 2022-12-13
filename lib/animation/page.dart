import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnimationWidget(),
    );
  }
}

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({super.key});

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animation = Tween<double>(
      begin: 1.0,
      end: 5.0,
    ).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                controller.forward();
              },
              icon: const Icon(Icons.play_arrow),
            ),
            IconButton(
              onPressed: () {
                controller.stop();
              },
              icon: const Icon(Icons.stop),
            ),
            IconButton(
              onPressed: () {
                controller.repeat();
              },
              icon: const Icon(Icons.loop),
            ),
          ],
        ),
      ),
      body: Center(
        child: ScaleTransition(
          scale: animation,
          child: Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}