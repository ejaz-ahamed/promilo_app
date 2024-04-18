import 'package:flutter/material.dart';
import 'package:promilo_app/core/theme/app_theme.dart';
import 'package:promilo_app/features/home/view/widgets/dotdecorator_widget.dart';
import 'package:promilo_app/features/home/view/widgets/icons_widget.dart';
import 'package:promilo_app/features/home/view/widgets/image_pageview_widget.dart';

class DescriptionPage extends StatelessWidget {
  static const routePath = '/desc';
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Description',
          style: TextStyle(color: AppTheme.text),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                IconWidget(),
                ImagePageViewWidget(),
                DotDecoratorWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
