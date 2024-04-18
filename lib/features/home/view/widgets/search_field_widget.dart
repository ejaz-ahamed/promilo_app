import 'package:flutter/material.dart';
import 'package:promilo_app/core/theme/app_theme.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          prefixIcon: const Icon(
            Icons.search,
            color: AppTheme.text,
          ),
          suffixIcon: const Icon(
            Icons.mic_outlined,
            color: AppTheme.text,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppTheme.text, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppTheme.text, width: 1.5),
          ),
        ),
      ),
    );
  }
}
