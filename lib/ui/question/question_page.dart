import 'package:english_test/models/enums/exam_part_type.dart';
import 'package:english_test/models/enums/question_type.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  final QuestionType questionType;
  final ExamPartType examPart;

  const QuestionPage({
    Key? key,
    required this.questionType,
    required this.examPart,
  }) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
