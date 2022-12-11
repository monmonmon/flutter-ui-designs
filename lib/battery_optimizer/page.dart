import 'package:flutter/material.dart';
import 'constants.dart';
import 'optimizer_buttons.dart';
import 'indicator.dart';
import 'apps_drainage.dart';
import 'optimize_now.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Battery Optimizer',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: kColorTitle),
        ),
        backgroundColor: Colors.white,
      ),
      home: _BatteryOptimizeerPage(),
    );
  }
}

class _BatteryOptimizeerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Battery Optimizer'),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: kColorTitle,
      ),
      body: SafeArea(
        child: Column(
          children: const [
            OptimizerButotns(),
            Indicator(),
            AppsDrainage(),
            OptimizeNow(),
          ],
        ),
      ),
    );
  }
}