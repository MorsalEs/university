
import '../models/question_model.dart';

class QuestionBank {

  List<QuestionModel> initQuestions(){

    List<QuestionModel> qs = [];

    qs.add(QuestionModel(
        text: "What is the only thing that computers understand?",
        options: [
          const OptionModel("Machine Code", false),
          const OptionModel("Low Level Languages", true),
          const OptionModel("High Level Languages", false),
          const OptionModel("Algorithms", false),
        ]
    ));
    qs.add(QuestionModel(
        text: "Resolving errors in a program is known as...",
        options: [
          const OptionModel("Debugging", true),
          const OptionModel("Refixing", false),
          const OptionModel("Error Checking", false),
          const OptionModel("Problem Solving", false),
        ]
    ));

    qs.add(QuestionModel(
        text: "Which of the following is not a high level programming language?",
        options: [
          const OptionModel("Assembly", true),
          const OptionModel("C++", false),
          const OptionModel("Java", false),
          const OptionModel("Python", false),
        ]
    ));
    qs.add(QuestionModel(
        text: "Software that translates and executes a high level language program one line at a time is known as a?",
        options: [
          const OptionModel("Compiler", true),
          const OptionModel("Interpreter++", false),
          const OptionModel("Assembler", false),
          const OptionModel("Executor", false),
        ]
    ));
    qs.add(QuestionModel(
        text: "A Syntax Error is ? ",
        options: [
          const OptionModel("An error you will never find", false),
          const OptionModel("An error you find at the end when the program gives out a wrong value due to logic error.", false),
          const OptionModel("An error caused by language rules being broken.", true),
          const OptionModel("An error due to user error", false),
        ]
    ));
    qs.add(QuestionModel(
        text: "One loop inside the body of another loop is called",
        options: [
          const OptionModel("Loop in loop", false),
          const OptionModel("Double loops", false),
          const OptionModel("Multi loops", false),
          const OptionModel("Nested", true),
        ]
    ));
    qs.add(QuestionModel(
        text: "Which of the following is not a benefits of the Object Orientation",
        options: [
          const OptionModel("Inheritance", false),
          const OptionModel("Inheritance", false),
          const OptionModel("Maintainability", true),
          const OptionModel("Polymorphism", false),
        ]
    ));
    qs.add(QuestionModel(
        text: "What does HTML stand for?",
        options: [
          const OptionModel("Hyper Trainer Marking Language", false),
          const OptionModel("Hyper Text Marketing Language", false),
          const OptionModel("Hyper Text Markup Language", true),
          const OptionModel("Hyper Text Markup Leveler", false),
        ]
    ));
    qs.add(QuestionModel(
        text: "String objects are immutable. what do you mean by that?",
        options: [
          const OptionModel("Object state can be replaced", false),
          const OptionModel("Object state can’t be replaced", false),
          const OptionModel("Object state can be modified", false),
          const OptionModel("Object state can’t be modified", true),
        ]
    ));
    qs.add(QuestionModel(
        text: "Polymorphism is one interface with __________.",
        options: [
          const OptionModel("Single method", true),
          const OptionModel("Multiple methods", false),
          const OptionModel("Multiple record", false),
          const OptionModel("Single record", false),
        ]
    ));

    return qs;
  }

}