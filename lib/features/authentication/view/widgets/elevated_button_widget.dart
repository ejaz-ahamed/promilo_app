import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo_app/core/theme/app_theme.dart';
import 'package:promilo_app/features/authentication/controller/provider/auth_provider.dart';

class ElevatedButtonWidget extends ConsumerWidget {
  final GlobalKey<FormState> formKey;
  final String email;
  final String password;
  final Color backgroundColor;
  const ElevatedButtonWidget({
    super.key,
    required this.formKey,
    required this.email,
    required this.password,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60),
          backgroundColor: AppTheme.submitBtn,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: AppTheme.button, width: 3),
          )),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          ref.read(authProvider.notifier).login(email, password, context);
        }
      },
      child: const Text(
        'Submit',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
