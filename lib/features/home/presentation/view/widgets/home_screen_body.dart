import 'package:flutter/material.dart';
import 'package:unheard_voices/features/home/presentation/view/widgets/custom_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), Text("data")],
    );
  }
}
