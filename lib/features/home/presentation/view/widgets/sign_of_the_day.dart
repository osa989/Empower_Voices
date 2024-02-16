import 'package:flutter/material.dart';

class LanguageOfTheDayWeekWidget extends StatelessWidget {
  final String languageName;
  final String imageUrl;

  const LanguageOfTheDayWeekWidget({
    super.key,
    required this.languageName,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sign of the Day',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Icon(
                  Icons.favorite_outline_sharp,
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Image.asset(
              imageUrl,
              height: 200.0,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
