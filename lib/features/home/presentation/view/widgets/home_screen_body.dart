import 'package:flutter/material.dart';
import 'package:unheard_voices/features/home/presentation/view/widgets/custom_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});
  Widget _selectedCleaning(
      {@required Color? color,
      @required String? title,
      @required String? subtitle}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.only(left: 20),
      height: 120,
      width: 240,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title!,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white70,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subtitle!,
            style: TextStyle(
              fontSize: 19,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _selectedExtras({@required String? image, @required String? name}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey, width: 2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image!))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name!,
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppBar(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(
              left: 10,
              top: 30,
            ),
            child: Row(
              children: [
                _selectedCleaning(
                  color: Colors.teal,
                  title: "title",
                  subtitle: "subtitle",
                ),
                _selectedCleaning(
                  color: Colors.teal,
                  title: "title",
                  subtitle: "subtitle",
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selected Extractor',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.30,
                  children: [
                    _selectedExtras(
                      image: "assets/1.ico",
                      name: "Organising",
                    ),
                    _selectedExtras(
                      image: "assets/2.ico",
                      name: "Organising",
                    ),
                    _selectedExtras(
                      image: "assets/3.ico",
                      name: "Organising",
                    ),
                    _selectedExtras(
                      image: "assets/4.ico",
                      name: "Organising",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
