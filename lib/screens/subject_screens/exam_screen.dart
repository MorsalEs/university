import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uni_app/helpers/question_bank.dart';
import 'package:uni_app/models/question_model.dart';
import 'package:uni_app/screens/result_screen.dart';
import 'package:uni_app/screens/screens_base.dart';

import '../../costants.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({Key? key}) : super(key: key);

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {

  List<QuestionModel> questionsList = [];

  int currentQuestion = 0;

  @override
  void initState() {
    questionsList = QuestionBank().initQuestions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      title: "Exam",
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14.0,
          vertical: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 64.0,),

            Text("Question ${currentQuestion + 1}/${questionsList.length}",
              style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),

            const SizedBox(height: 24.0,),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Text("${questionsList[currentQuestion].text}",
                style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                ),),
            ),


            Column(
              children: questionsList[currentQuestion].options!
                  .map((e) =>
                  OptionLayout(
                    e,
                    onClick: (OptionModel model) {
                      HapticFeedback.vibrate();
                      questionsList[currentQuestion].selectedOption = model;
                      if (currentQuestion != questionsList.length - 1) {
                        setState(() {
                          currentQuestion = currentQuestion + 1;
                        });
                      }else{
                        Navigator.pop(context);
                        Constants.navigateTo(context, ResultScreen(questionsList));
                      }

                    },
                  )).toList(),
            )


          ],
        ),
      ),
    );
  }
}



class OptionLayout extends StatelessWidget {
  final OptionModel optionModel;
  final ValueChanged<OptionModel>? onClick;
  const OptionLayout(this.optionModel,{this.onClick, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick!(optionModel),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 13.0),
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Colors.black38, width: 0.8),
        ),
        child: Text(
          "${optionModel.value}",
          style: const TextStyle(
            fontSize: 17.0,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
