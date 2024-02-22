import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  const SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}

final slides = <SlideInfo>[
  const SlideInfo(
    title: 'Select your food',
    caption: 'Choose from a wide variety of delicious dishes',
    imageUrl: 'assets/images/1.png',
  ),
  const SlideInfo(
    title: 'Wait for your order',
    caption: 'Sit back and relax while we prepare your meal',
    imageUrl: 'assets/images/2.png',
  ),
  const SlideInfo(
    title: 'Enjoy your meal',
    caption: 'Savor the flavors and have a delightful dining experience',
    imageUrl: 'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool showStartButton = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      if (pageViewController.page == 1.5) {
        setState(() {
          showStartButton = true;
        });
      } else {
        setState(() {
          showStartButton = false;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map(
                  (e) => _Slide(
                    title: e.title,
                    caption: e.caption,
                    imageUrl: e.imageUrl,
                  ),
                )
                .toList(),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Skip'),
            ),
          ),
          showStartButton
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Comenzar'),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final bodyStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(title, style: titleStyle),
            const SizedBox(height: 20),
            Text(caption, style: bodyStyle),
          ],
        ));
  }
}
