import 'package:flutter/material.dart';
import 'package:uni_app/screens/field_screen.dart';
import 'package:uni_app/screens/screens_base.dart';

import '../widgets/custom_appbar.dart';
import 'dashboard.dart';


class SemesterScreen extends StatelessWidget {
  final String title;
  const SemesterScreen({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      title: title,
      child: Column(
      children: [


        const SizedBox(height: 28.0,),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [

              CourseItem(
                title: "Software",
                icon: "assets/software.png",
                page: FieldScreen(title: "Software"),
              ),
              SizedBox(width: 8.0,),
              CourseItem(
                title: "Network",
                icon: "assets/computer.png",
                page: FieldScreen(title: "Network"),
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
                title: "Database",
                icon: "assets/database.png",
                page: FieldScreen(title: "Database"),
              ),
              // SizedBox(width: 8.0,),
              // CourseItem(
              //   title: "Semester 4",
              //   icon: "assets/book.png",
              // ),


            ],
          ),
        ),

      ],
    ),
    );
  }
}
