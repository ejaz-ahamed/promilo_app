import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo_app/core/theme/app_theme.dart';
import 'package:promilo_app/features/home/view/pages/description_page.dart';

class SeaMoreWidget extends ConsumerWidget {
  const SeaMoreWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            '"In this app, the _buildStar function dynamically generates star icons with varying opacities based on an index value. These stars serve as visual indicators of a rating or score. By adjusting the opacity, the stars provide a subtle yet intuitive way to represent different levels or tiers. The Icons.star symbolizes excellence, while the blue color adds a touch of vibrancy to the interface. With each star having a size of 16 pixels, they neatly complement other elements on the screen, contributing to a cohesive and polished user experience."',
            style: const TextStyle(color: Colors.black54),
            maxLines: ref.watch(isExpandedProvider) ? null : 4,
          ),
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () => ref
                    .read(isExpandedProvider.notifier)
                    .update((state) => !state),
                child: Text(
                  ref.watch(isExpandedProvider) ? 'See less' : 'See more',
                  style: const TextStyle(color: AppTheme.button),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
