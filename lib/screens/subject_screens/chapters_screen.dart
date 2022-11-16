
import 'package:flutter/material.dart';
import 'package:uni_app/screens/screens_base.dart';

import '../../widgets/custom_appbar.dart';

class ChaptersScreen extends StatelessWidget {
  const ChaptersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      title: "Chapters",
      child: ListView.builder(
      itemCount: 18,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 4.0,
      ),
      itemBuilder: (context, index){
        return const ChapterLayout();
      },
    ),
    );
  }
}

class ChapterLayout extends StatelessWidget {
  final String? title, file;
  const ChapterLayout({this.title, this.file, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      padding: const EdgeInsets.only(
        bottom: 6.0,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300, width: .8),
        )
      ),
      child: Row(
        children: [

          CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.cyan,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/essay.png',
                height: 30.0,
                width: 30.0,
                //color: Colors.yellow,
              ),
            ),
          ),

          const SizedBox(width: 8.0,),

          const Expanded(
            child: Text("Name of the file", style: TextStyle(
              color: Colors.grey,
              fontSize: 18.0
            ),),
          ),

        ],
      ),
    );
  }
}

