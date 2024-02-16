import 'package:flutter/material.dart';
import 'package:unheard_voices/features/chat/presentation/view/widgets/chat_custom_app_bar.dart';
import 'package:unheard_voices/features/home/presentation/view/widgets/custom_favorite_section.dart';
import 'package:unheard_voices/features/home/presentation/view/widgets/custom_page_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatCustomAppBar(),
        CustomPageView(),
        Text("FAVORITS"),
        CustomFavoritesSection(),
        Text("More info")
      ],
    );
  }
}
