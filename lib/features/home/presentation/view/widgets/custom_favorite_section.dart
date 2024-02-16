
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:unheard_voices/constants.dart';

class CustomFavoritesSection extends StatelessWidget {
  const CustomFavoritesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: height * .35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffe9e9e9),
      ),
      child: Column(
        children: [
          Image.asset("assets/Images/fav5.png", width: 150),
          const MaxGap(5),
          const Text(
            "You haven't logged in",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const Text("You need to be logged in to add favorits"),
          const MaxGap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: buttonStyle(
                  bgColor: whiteColor,
                  side: buttonBorder(),
                ),
                child: const Text(
                  "Register",
                ),
              ),
              const MaxGap(10),
              ElevatedButton(
                onPressed: () {},
                style: buttonStyle(
                  bgColor: purpleBlueColor,
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const MaxGap(10),
        ],
      ),
    );
  }

  ButtonStyle buttonStyle({Color? bgColor, BorderSide? side}) {
    return ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        padding: const EdgeInsets.symmetric(horizontal: 35),
        textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        side: side);
  }

  BorderSide buttonBorder() {
    return const BorderSide(
        width: 1, // the thickness
        color: Colors.black // the color of the border
        );
  }
}
