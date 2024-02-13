import 'package:flutter/material.dart';
import 'package:unheard_voices/constants.dart';

class CustomAppSections extends StatelessWidget {
  const CustomAppSections({super.key});
  Widget _selectedExtras({@required String? image, @required String? name}) {
    return Container(
      decoration: BoxDecoration(
          color: purpleBlueColor,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey, width: 2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 65,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image!))),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name!,
            style: const TextStyle(
                fontSize: 17, fontWeight: FontWeight.w500, color: whiteColor),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sections :',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 8,
              childAspectRatio: 1.40,
              children: [
                _selectedExtras(
                  image: "assets/Images/chat.png",
                  name: "Conversation",
                ),
                _selectedExtras(
                  image: "assets/Images/Learn2.png",
                  name: "Learning",
                ),
                _selectedExtras(
                  image: "assets/Images/settings.png",
                  name: "Settings",
                ),
                _selectedExtras(
                  image: "assets/Images/user2.png",
                  name: "Deaf Comunity",
                ),
              ],
            ),
          ),
          Text(
            'Learning :',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
