import 'package:flutter/material.dart';
import 'package:unheard_voices/constants.dart';

class ChatCustomAppBar extends StatelessWidget {
  const ChatCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: purpleBlueColor,
        // borderRadius:
        //     BorderRadius.circular(20.0), // Set your desired border radius here
      ),
      child: const Padding(
        padding: EdgeInsetsDirectional.only(
          // top: 10,
          start: 10,
          end: 10,
        ),
        child: Row(
          children: [
            SizedBox(
              height: 75,
            ),
            Icon(
              Icons.subject_outlined,
              color: whiteColor,
              size: 30,
            ),
            SizedBox(
              width: 68,
            ),
            Text(
              'Unheard Voices',
              style: TextStyle(
                color: whiteColor,
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Icon(
              Icons.language,
              color: whiteColor,
              size: 26,
            ),
          ],
        ),
      ),
    );
  }
}
