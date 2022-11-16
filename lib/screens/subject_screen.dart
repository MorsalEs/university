import 'package:flutter/material.dart';
import 'package:uni_app/screens/screens_base.dart';
import 'package:uni_app/screens/subject_screens/books_screen.dart';
import 'package:uni_app/screens/subject_screens/chapters_screen.dart';
import 'package:uni_app/screens/subject_screens/courses_screen.dart';
import 'package:uni_app/screens/subject_screens/exam_screen.dart';
import 'dashboard.dart';

class SubjectScreen extends StatelessWidget {
  final String title;
  const SubjectScreen({required this.title,Key? key}) : super(key: key);

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
                title: "Chapters",
                icon: "assets/essay.png",
                page: ChaptersScreen(),
              ),
              SizedBox(width: 8.0,),
              CourseItem(
                title: "Books",
                icon: "assets/bookshelf.png",
                page: BooksScreen(),
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
                title: "Online Courses",
                icon: "assets/webinar.png",
                page: CoursesScreen(),
              ),
              SizedBox(width: 8.0,),
              CourseItem(
                title: "Exam",
                icon: "assets/schedule.png",
                page: ExamScreen(),
              ),


            ],
          ),
        ),


      ],
    ),
    );
  }
}
