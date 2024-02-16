import 'dart:async';

import 'package:flutter/material.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({Key? key}) : super(key: key);

  @override
  _CustomPageViewState createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  late PageController _pageController;
  static const int _numPages = 3;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_pageController.page! < _numPages - 1) {
        _pageController.nextPage(
          duration: Duration(milliseconds: 2500),
          curve: Curves.easeInOut,
        );
      } else {
        _timer.cancel(); // Stop auto-scrolling when reaching the last page
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: PageView.builder(
        controller: _pageController,
        itemCount: _numPages,
        itemBuilder: (context, index) => buildPage(index),
      ),
    );
  }

  Widget buildPage(int index) {
    final List<String> imagePaths = [
      "assets/Images/bk4.jpg",
      "assets/Images/bk5.png",
      "assets/Images/bk7.png",
    ];

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        imagePaths[index],
        fit: BoxFit.fill,
      ),
    );
  }
}
