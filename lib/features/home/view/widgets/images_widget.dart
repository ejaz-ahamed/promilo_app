import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo_app/core/theme/app_theme.dart';

final imageProvider = StateProvider<int>((ref) => 0);

class ImageWidget extends ConsumerWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentIndex = ref.watch(imageProvider);
    final pageController = PageController(initialPage: currentIndex);

    final List<String> imageUrls = [
      'https://www.raah.org.in/wp-content/uploads/2019/09/brainstorming-chatting-communicating-2962135-1-1024x574.jpg',
      'https://www.raah.org.in/wp-content/uploads/2019/09/brainstorming-chatting-communicating-2962135-1-1024x574.jpg',
      'https://www.raah.org.in/wp-content/uploads/2019/09/brainstorming-chatting-communicating-2962135-1-1024x574.jpg',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 224,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) => currentIndex = index,
                itemCount: imageUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          imageUrls[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        bottom: 40,
                        left: 24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Popular Meetups',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'in India',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  imageUrls.length,
                  (index) => InkWell(
                    onTap: () => pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease,
                    ),
                    child: DotsIndicator(
                      dotsCount: 1,
                      position: 0,
                      decorator: DotsDecorator(
                        color: AppTheme.text,
                        activeColor: index == currentIndex
                            ? AppTheme.text
                            : AppTheme.text.withOpacity(.5),
                        size: const Size.square(8),
                        activeSize: const Size(8, 8),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
