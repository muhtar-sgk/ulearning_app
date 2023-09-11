import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';
import 'package:ulearning_app/common/widgets/widgets.dart';

import 'notifier/welcome_notifier.dart';

class Welcome extends ConsumerWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);

    return Container(
      color: AppColors.primaryBackground,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                // three indicators
                PageView(
                  controller: _controller,
                  onPageChanged: (value) {
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                  scrollDirection: Axis.horizontal,
                  children: [
                    // first page
                    appOnboardingPage(
                      context,
                      _controller,
                      imagePath: "assets/images/reading.png",
                      title: "First See Learning",
                      subtitle: "Forget about of the paper, all knowledge in one place",
                      index: 1
                    ),
                    // second page
                    appOnboardingPage(
                      context,
                      _controller,
                      imagePath: "assets/images/man.png",
                      title: "Connect With Everyone",
                      subtitle: "Always keep in touch your tutor and friends. Let's get connected",
                      index: 2
                    ),
                    // third page
                    appOnboardingPage(
                      context,
                      _controller,
                      imagePath: "assets/images/boy.png",
                      title: "Always Fascinated Learning",
                      subtitle: "Anywhere, anytime. The time is at your discretion. So study wherever you can",
                      index: 3
                    ),
                  ],
                ),
                // dots
                Positioned(
                  child: DotsIndicator(
                    position: index,
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      size: const Size.square(9),
                      activeSize: const Size(24, 8),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    ),
                  ),
                  bottom: 50
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}