import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo_app/core/theme/app_theme.dart';
import 'package:promilo_app/features/home/view/widgets/bott_nav_widget.dart';
import 'package:promilo_app/features/home/view/widgets/dotdecorator_widget.dart';
import 'package:promilo_app/features/home/view/widgets/icons_widget.dart';
import 'package:promilo_app/features/home/view/widgets/image_pageview_widget.dart';
import 'package:promilo_app/features/home/view/widgets/row_desc_widget.dart';
import 'package:promilo_app/features/home/view/widgets/see_more_widget.dart';

final isExpandedProvider = StateProvider<bool>((ref) => false);

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
            RowDescriptionWidget(),
            SizedBox(
              height: 8 * 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Actor Name',
                style: TextStyle(
                  color: AppTheme.text,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Indian Actress',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: Colors.black54,
                    size: 16,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Duration 20 Min',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.wallet,
                    color: Colors.black54,
                    size: 16,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Total Average Fee ₹9,999',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'About',
                style: TextStyle(
                  color: AppTheme.text,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SeaMoreWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black, offset: Offset.zero, blurRadius: 2),
          ],
        ),
        child: const BottomNavigationBarWidget(),
      ),
    );
  }
}
