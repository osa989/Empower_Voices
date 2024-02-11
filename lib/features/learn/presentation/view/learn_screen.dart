import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unheard_voices/constants.dart';
import 'package:unheard_voices/core/Cubit/app_cubit.dart';
import 'package:unheard_voices/core/Cubit/app_states.dart';
import 'package:unheard_voices/features/chat/presentation/view/widgets/chat_custom_app_bar.dart';
import 'package:unheard_voices/features/learn/presentation/view/widgets/animal_screen.dart';


class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children:
            [
              const ChatCustomAppBar(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      width: 1,
                      color: purpleBlueColor,
                    ),
                  ),
                  child: Row(
                    children:
                    [
                      Container(
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10.0),
                          border:const BorderDirectional(
                            end: BorderSide(
                              width: 1,
                              color: purpleBlueColor,
                            ),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: const Image(
                            height: 80,
                            width: 120,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/Images/1.webp'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        'Animals',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 62,
                      ),
                      IconButton(
                        onPressed: ()
                        {
                          // Navigate to the new screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AnimalScreen(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_right,
                          size: 38,
                          color: purpleBlueColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
