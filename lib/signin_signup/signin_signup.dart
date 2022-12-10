import 'package:flutter/material.dart';
import 'colors.dart';
import 'header.dart';
import 'form.dart';
import 'footer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Designs',
      theme: ThemeData.light(),
      home: _SigninSignupPage(),
    );
  }
}

class _SigninSignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
              debugPrint('>> dismiss focus!');
            },
            child: Column(
              children: [
                const Header(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: const [
                      SignInForm(),
                      Footer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}