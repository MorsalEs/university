import 'package:flutter/material.dart';
import 'package:uni_app/screens/screens_base.dart';

import '../models/question_model.dart';

class ResultScreen extends StatefulWidget {
  final List<QuestionModel> answers;
  const ResultScreen(this.answers, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  int result = 0;

  @override
  void initState() {
    _getResult();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      title: "Result",
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [


          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            padding: const EdgeInsets.symmetric(vertical: 60.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Colors.grey.shade200
            ),
            child: Column(
              children:  [

                const Text("You have answered all 10 questions,", style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical:18.0),
                  child: Text("Your result is ${"$result / ${widget.answers.length}"}", style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),),
                ),


                Image.asset(
                  result < 5 ? "assets/images/fail.png" : "assets/images/pass.png",
                  height: 84.0,
                  width: 84.0,
                ),

              ],
            ),
          )

        ],
      ),
    );
  }

  void _getResult() {
    int value = 0;
    for(var item in widget.answers){
      if(item.selectedOption!.isCorrect!) value++;
    }

    result = value;
  }
}
