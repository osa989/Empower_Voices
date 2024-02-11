import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unheard_voices/constants.dart';
import 'package:unheard_voices/core/Cubit/app_cubit.dart';
import 'package:unheard_voices/core/Cubit/app_states.dart';
import 'package:unheard_voices/features/chat/presentation/view/widgets/chat_custom_app_bar.dart';

class DonkeyScreen extends StatelessWidget {
  const DonkeyScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state)
          {
            return Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                  const ChatCustomAppBar(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Donkey',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 8,
                      top: 20,
                      bottom: 14,
                    ),
                    child: Container(
                      height: 168,
                      width: 300,
                      clipBehavior: Clip.hardEdge,
                      decoration:BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                            width: 1,
                            color: purpleBlueColor
                        ),
                      ),
                      child: const Image(
                        image: AssetImage('assets/GIF/donkey.gif'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 350,
                  ),
                  AvatarGlow(
                    endRadius: 50,
                    animate: true,
                    duration: const Duration(
                      milliseconds: 2000,
                    ),
                    glowColor: purpleBlueColor,
                    repeat: true,
                    repeatPauseDuration: const Duration(
                      milliseconds: 100,
                    ),
                    showTwoGlows: true,
                    child: GestureDetector(
                      onTapDown: (details) async{
                        AppCubit.get(context).updateTextFieldDesign();
                        AppCubit.get(context).changeToOpenCamera();
                        await AppCubit.get(context).startStreaming();
                      },
                      onTapUp: (details){
                        if(AppCubit.get(context).textEditingController.text.isEmpty){
                          AppCubit.get(context).removeUpdateTextFieldDesign();
                        }
                        AppCubit.get(context).cameraController.dispose();
                        AppCubit.get(context).changeToCloseCamera();
                      },
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundColor: purpleBlueColor,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}
