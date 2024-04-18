import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo_app/core/theme/app_theme.dart';

class RowDescriptionWidget extends ConsumerWidget {
  const RowDescriptionWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Icon(
            Icons.bookmark_outline,
            size: 8 * 2.5,
            color: AppTheme.button,
          ),
          const SizedBox(
            width: 8 * 1.25,
          ),
          const Text(
            '1034',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 8 * 1.25,
          ),
          const Icon(
            Icons.favorite_outline,
            size: 8 * 2.5,
            color: AppTheme.button,
          ),
          const SizedBox(
            width: 8 * 1.25,
          ),
          const Text(
            '1034',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 8 * 1.25,
          ),
          Container(
            height: 20,
            width: 8 * 14.375,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: List.generate(5, (index) => _buildStar(index)),
              ),
            ),
          ),
          const SizedBox(
            width: 8 * 1.25,
          ),
          const Text(
            '3.2',
            style: TextStyle(color: AppTheme.button),
          )
        ],
      ),
    );
  }
}

Widget _buildStar(int index) {
  final opacity = (1.0 - (index / 5)).clamp(0.0, 1.0);
  final color = index == 5 ? Colors.white : Colors.blue;

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 1),
    child: Icon(
      Icons.star,
      color: color.withOpacity(opacity),
      size: 16,
    ),
  );
}
