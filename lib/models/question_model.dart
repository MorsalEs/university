
class QuestionModel {

  String? text;
  List<OptionModel>? options;
  OptionModel? selectedOption;

  QuestionModel({this.text, this.options, this.selectedOption});
}



class OptionModel {

  final String? value;
  final bool? isCorrect;

  const OptionModel(this.value, this.isCorrect);
}