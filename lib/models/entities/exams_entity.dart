import 'package:english_test/models/entities/question_entity.dart';

class ExamsEntity {
  final List<QuestionEntity> listQuestion;
  final int point;
  final bool isPass;

  ExamsEntity({
    required this.listQuestion,
    required this.point,
    required this.isPass,
  });
}
