import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DotDecoratorWidget extends ConsumerWidget {
  const DotDecoratorWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      bottom: 8 * 10.625,
      right: 8 * 16.75,
      child: DotsIndicator(
        dotsCount: 5,
        position: 0,
        decorator: const DotsDecorator(
          activeColor: Colors.white,
          color: Colors.white60,
          size: Size.square(8),
          activeSize: Size(8, 8),
        ),
      ),
    );
  }
}
