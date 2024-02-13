import 'package:flutter/material.dart';
import 'package:unheard_voices/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:unheard_voices/features/home/presentation/view/widgets/custom_app_sections.dart';
import 'package:unheard_voices/features/home/presentation/view/widgets/custom_learning_groups.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomAppBar(),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: CustomWelcomeCard(),
        ),
        CustomAppSections(),
        
        CustomLearningGroups(),
      ],
    );
  }
}

class CustomWelcomeCard extends StatelessWidget {
  const CustomWelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.blue[100],
          child: ListTile(
            title: const Text("Welcome",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
            subtitle: const Text(
              "User",
              style: TextStyle(fontSize: 16),
            ),
            trailing: Image.asset(
              "assets/Images/user3.png",
              width: 45,
            ),
          )),
    );
  }
}
