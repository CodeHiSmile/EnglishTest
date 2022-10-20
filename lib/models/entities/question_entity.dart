import 'package:english_test/models/entities/answer_question_entity.dart';
import 'package:english_test/models/entities/title_question_entity.dart';

class QuestionEntity {
  final TitleQuestionEntity titleQuestionEntity;
  final List<AnswerQuestionEntity> listAnswer;
  final String? answerSelected;
  final bool isCheck;

  QuestionEntity({
    required this.titleQuestionEntity,
    required this.listAnswer,
    this.answerSelected,
    required this.isCheck,
  });
}
