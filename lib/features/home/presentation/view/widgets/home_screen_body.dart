import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:unheard_voices/features/chat/presentation/view/widgets/chat_custom_app_bar.dart';
import 'package:unheard_voices/features/home/presentation/view/widgets/custom_favorite_section.dart';
import 'package:unheard_voices/features/home/presentation/view/widgets/custom_page_view.dart';
import 'package:unheard_voices/features/home/presentation/view/widgets/sign_of_the_day.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatCustomAppBar(),
        CustomPageView(),
        Gap(20),
        Text(
          "Favorite Signs",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        CustomFavoritesSection(),
        Gap(20),
        LanguageOfTheDayWeekWidget(
          languageName: 'english',
          imageUrl: 'assets/GIF/all.gif',
        ),
      ],
    );
  }
}
