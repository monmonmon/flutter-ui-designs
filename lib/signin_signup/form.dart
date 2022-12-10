import 'package:flutter/material.dart';
import 'colors.dart';

class _CustomTextField extends StatelessWidget {
  const _CustomTextField({
    required this.labelText,
    required this.hintText,
    this.obscureText = false,
  });

  final String labelText;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: kTextColorSecondary,
      ),
    );
    return TextField(
      style: const TextStyle(
        color: kTextColorPrimary,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: kTextColorSecondary),
        hintText: hintText,
        hintStyle: const TextStyle(color: kTextColorSecondary),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
      ),
      obscureText: obscureText,
      onTap: () {
        debugPrint('field "$labelText" is tapped');
      },
    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const _CustomTextField(
          labelText: 'Email',
          hintText: 'your email address goes here',
        ),
        const SizedBox(height: 48),
        const _CustomTextField(
          labelText: 'Password',
          hintText: 'Your password goes here',
          obscureText: true,
        ),
        const SizedBox(height: 4),
        TextButton(
          child: const Text(
            'Forgot password?',
            style: TextStyle(
              fontSize: 14,
              color: kTextColorSecondary,
            ),
          ),
          onPressed: () {
            debugPrint('forgot password?');
          },
        ),
        const SizedBox(height: 48),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            // style: ButtonStyle(
            //   backgroundColor: Colors.white,
            // ),
            style: TextButton.styleFrom(
              foregroundColor: kButtonTextColorPrimary,
              backgroundColor: kButtonColorPrimary,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              debugPrint('sign in button pressed');
              debugDumpFocusTree();
            },
            child: Text(
              'Sign in',
              style: Theme.of(context)
                .textTheme
                .button!
                .copyWith(color: kTextColorSecondary, fontSize: 18),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'OR',
          style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: kTextColorSecondary),
        ),
        const SizedBox(height: 16),
        Text(
          'Connect with',
          style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: kTextColorPrimary),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(
                Icons.account_circle,
                color: kTextColorPrimary,
              ),
              onPressed: () {
                debugPrint('icon1');
              },
            ),
            Container(
              width: 1,
              height: 16,
              color: kTextColorSecondary,
            ),
            IconButton(
              icon: const Icon(
                Icons.account_circle,
                color: kTextColorPrimary,
              ),
              onPressed: () {
                debugPrint('icon2');
              },
            ),
          ],
        ),
      ],
    );
  }
}