import 'package:flutter/material.dart';
import 'package:uni_app/screens/screens_base.dart';

import '../../models/course_model.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {

  List<CourseModel> coursesList = [
    CourseModel(name: "Payton for beginners", image: "python" ),
    CourseModel(name: "Java for beginners", image: "java" ),
    CourseModel(name: "Advanced C++ Course", image: "cplus" ),
    CourseModel(name: "Full Game Development", image: "game" ),
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      title: "Online Courses",
      child: ListView.builder(
        itemCount: coursesList.length,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 8.0,
        ),
        itemBuilder: (context, index){
          return CourseLayout(coursesList[index]);
        },
      ),
    );
  }
}


class CourseLayout extends StatelessWidget {
  final CourseModel courseModel;
  const CourseLayout(this.courseModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0
      ),
      padding: EdgeInsets.only(
        bottom: 8.0,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade200,
            width: 0.8,
          )
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.asset(
              "assets/images/${courseModel.image}.jpeg",
              height: 120.0,
              width: 120.0,
              fit: BoxFit.fill,
            ),
          ),

          const SizedBox(width: 8.0),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8.0,),

                Text(courseModel.name!, style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),),

                const SizedBox(height: 14.0,),

                const Text("Published on 13/06/2022"),

              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
