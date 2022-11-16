import 'package:flutter/material.dart';
import 'package:uni_app/screens/screens_base.dart';
import 'package:uni_app/screens/subject_screen.dart';

import '../widgets/custom_appbar.dart';
import 'dashboard.dart';


class FieldScreen extends StatelessWidget {
  final String title;
  const FieldScreen({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      title: title,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        const SizedBox(height: 28.0,),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [

              CourseItem(
                title: "Programming",
                icon: "assets/data.png",
                page: SubjectScreen(title: "Programming"),
              ),
              SizedBox(width: 8.0,),
              CourseItem(
                title: "Computer Engineering",
                icon: "assets/engineer.png",
                page: SubjectScreen(title: "Computer Engineering"),
              ),

            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [

              CourseItem(
                title: "Mathematics",
                icon: "assets/calculating.png",
                page: SubjectScreen(title: "Mathematics"),
              ),
              SizedBox(width: 8.0,),
              CourseItem(
                title: "Islamic",
                icon: "assets/moon.png",
                page: SubjectScreen(title: "Islamic"),
              ),


            ],
          ),
        ),


      ],
    ),
    );
  }
}
