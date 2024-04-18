import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:promilo_app/core/theme/app_theme.dart';
import 'package:promilo_app/features/authentication/view/widgets/app_row_widget.dart';
import 'package:promilo_app/features/authentication/view/widgets/elevated_button_widget.dart';
import 'package:promilo_app/features/authentication/view/widgets/textfield_widget.dart';

class LoginPage extends HookConsumerWidget {
  static const routePath = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnabled = useState<bool>(false);
    final emailController =
        useTextEditingController(text: 'test45@yopmail.com');
    final passwordController = useTextEditingController(text: 'Test@123');
    final formKey = useMemoized(() => GlobalKey<FormState>());

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
            child: Form(
              key: formKey,
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
                    fieledHead: '  Please Sign in to continue',
                    fieldtail: 'Sign In with OTP',
                    hintText: 'Enter Email or Mob no.',
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email cannot be empty";
                      }
                      if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(emailController.text)) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      if (value.isEmpty) {
                        isEnabled.value = false;
                      } else {
                        isEnabled.value = true;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFieldWidget(
                    isCheckBox: true,
                    fieledHead: '  Password',
                    fieldtail: 'Forget password',
                    hintText: 'Enter password',
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password cannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      if (value.isEmpty) {
                        isEnabled.value = false;
                      } else {
                        isEnabled.value = true;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButtonWidget(
                    email: emailController.text,
                    password: passwordController.text,
                    formKey: formKey,
                    backgroundColor:
                        isEnabled.value ? AppTheme.button : AppTheme.submitBtn,
                  ),
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
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 16),
                      ),
                      Text(
                        "Don't have an account",
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 16),
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
      ),
    );
  }
}
