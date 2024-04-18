import 'package:flutter/material.dart';
import 'package:promilo_app/core/theme/app_theme.dart';

void showSnackBar(BuildContext context, String message, bool isError) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: isError ? Colors.red : AppTheme.button,
      margin: const EdgeInsets.all(8),
      behavior: SnackBarBehavior.floating,
      content: Text(message)));
}
