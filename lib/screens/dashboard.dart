import 'package:flutter/material.dart';
import 'package:uni_app/costants.dart';
import 'package:uni_app/screens/semester_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset("assets/data_science.png" ,
                    height: 60.0,
                    width: 60.0,
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical:8.0),
                  child: Text("CS Educational Guide", style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                ),


              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [



          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [

                CourseItem(
                  title: "Semester 1",
                  icon: "assets/bookshelf.png",
                  page: SemesterScreen(
                    title: "Semester 1",
                  ),
                ),
                SizedBox(width: 8.0,),
                CourseItem(
                  title: "Semester 2",
                  icon: "assets/bookshelf.png",
                  page: SemesterScreen(
                    title: "Semester 2",
                  ),
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
                  title: "Semester 3",
                  icon: "assets/bookshelf.png",
                  page: SemesterScreen(
                    title: "Semester 3",
                  ),
                ),
                SizedBox(width: 8.0,),
                CourseItem(
                  title: "Semester 4",
                  icon: "assets/bookshelf.png",
                  page: SemesterScreen(
                    title: "Semester 4",
                  ),
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}


class CourseItem extends StatelessWidget {
  final String title , icon;
  final Widget? page;
  const CourseItem({required this.icon,required this.title,
    this.page, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          if(page != null){
            Constants.navigateTo(context, page!);
          }
        },
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(0.0),
          child: Stack(
            children: [

              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                  top: 30.0,
                  left: 14.0,right: 14.0,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 100.0
                ),
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25.0),
                    topRight: Radius.circular(4.0),
                    topLeft: Radius.circular(4.0),
                    bottomLeft: Radius.circular(4.0),

                  )
                ),
                child: Text(title , style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              Positioned(
                right: 24.0,
                top: -0.0,
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundColor: Colors.cyan,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      icon,
                      height: 45.0,
                      width: 45.0,
                      //color: Colors.yellow,
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
