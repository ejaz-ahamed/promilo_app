import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:promilo_app/core/theme/app_theme.dart';
import 'package:promilo_app/features/authentication/view/widgets/app_row_widget.dart';
import 'package:promilo_app/features/authentication/view/widgets/elevated_button_widget.dart';
import 'package:promilo_app/features/authentication/view/widgets/textfield_widget.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          title: const Text(
            'promilo',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 32, top: 16),
                  child: Text(
                    'Hi, Welcome back',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.text),
                  ),
                ),
                TextFieldWidget(
                    isCheckBox: false,
                    fieledHead: 'Please Sign in to continue',
                    fieldtail: 'Sign In with OTP',
                    hintText: 'Enter Email or Mob no.',
                    controller: emailController),
                const SizedBox(
                  height: 16,
                ),
                TextFieldWidget(
                    isCheckBox: true,
                    fieledHead: 'Password',
                    fieldtail: 'Forget password',
                    hintText: 'Enter password',
                    controller: passwordController),
                const SizedBox(
                  height: 24,
                ),
                const ElevatedButtonWidget(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 32),
                  child: Row(
                    children: [
                      Expanded(child: Divider()),
                      Text(' or '),
                      Expanded(
                        child: Divider(),
                      ),
                    ],
                  ),
                ),
                const AppRowWidget(),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Business user?',
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 16),
                    ),
                    Text(
                      "Don't have an account",
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 16),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Login here',
                      style: TextStyle(
                          color: AppTheme.button,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                          color: AppTheme.button,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: "By continuing, you agree to\npromilo's ",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                        children: [
                          TextSpan(
                              text: 'Terms of Use & Privacy Policy',
                              style: TextStyle(color: Colors.black))
                        ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
