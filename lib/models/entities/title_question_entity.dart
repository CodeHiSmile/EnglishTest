import 'package:english_test/models/entities/answer_question_entity.dart';
import 'package:english_test/models/enums/question_type.dart';

class TitleQuestionEntity {
  final String title;
  final String idTitleQuestion;
  final AnswerQuestionEntity answerQuestionEntity;
  final QuestionType questionType;

  TitleQuestionEntity({
    required this.title,
    required this.idTitleQuestion,
    required this.answerQuestionEntity,
    required this.questionType,
  });
}
