import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:promilo_app/core/theme/app_theme.dart';
import 'package:promilo_app/features/authentication/view/pages/login_page.dart';
import 'package:promilo_app/features/home/view/widgets/images_widget.dart';
import 'package:promilo_app/features/home/view/widgets/meetup_card_widget.dart';
import 'package:promilo_app/features/home/view/widgets/search_field_widget.dart';

class HomePage extends StatelessWidget {
  static const routePath = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Individual Meetup',
          style: TextStyle(color: AppTheme.text),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          TextButton(
              onPressed: () {
                context.go(LoginPage.routePath);
              },
              child: const Row(
                children: [
                  Text(
                    "Logout",
                    style: TextStyle(
                      color: AppTheme.text,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.logout,
                    color: AppTheme.text,
                  ),
                ],
              ))
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchFieldWidget(),
              SizedBox(
                height: 16,
              ),
              ImageWidget(),
              SizedBox(
                height: 16,
              ),
              Text(
                "Trending Popular People",
                style: TextStyle(
                  color: AppTheme.text,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              MeetupCard(),
              Text(
                'Top Trending Meetups',
                style: TextStyle(
                  color: AppTheme.text,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
