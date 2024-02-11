import 'package:flutter/material.dart';
import 'package:unheard_voices/features/settings/presentation/view/widgets/settings_screen_body.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SettingsScreenBody(),
    );
  }
}
