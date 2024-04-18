import 'package:flutter/material.dart';
import 'package:promilo_app/core/theme/app_theme.dart';

class TextFieldWidget extends StatelessWidget {
  final bool isCheckBox;
  final String fieledHead;
  final String fieldtail;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String? value)? validator;
  final void Function(String)? onChanged;

  const TextFieldWidget({
    super.key,
    required this.fieledHead,
    required this.fieldtail,
    required this.hintText,
    required this.controller,
    required this.isCheckBox,
    required this.validator,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieledHead,
          style: const TextStyle(
              color: AppTheme.text, fontSize: 18, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          onChanged: onChanged,
          validator: validator,
          cursorColor: AppTheme.button,
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: AppTheme.button, width: 1.5),
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isCheckBox
                ? Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  )
                : const Text(''),
            Text(
              fieldtail,
              style: const TextStyle(
                  color: AppTheme.button,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
