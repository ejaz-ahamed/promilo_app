import 'package:flutter/material.dart';

class AppRowWidget extends StatelessWidget {
  const AppRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Image.asset(
            'assets/icons/ic_google.png',
            width: 32,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Image.asset(
            'assets/icons/ic_linkedin.png',
            width: 32,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Image.asset(
            'assets/icons/ic_facebook.png',
            width: 32,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Image.asset(
            'assets/icons/ic_instagram.png',
            width: 32,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Image.asset(
            'assets/icons/ic_whatsapp.png',
            width: 32,
          ),
        ),
      ],
    );
  }
}
