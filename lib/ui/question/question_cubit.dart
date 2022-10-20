import 'package:bloc/bloc.dart';
import 'package:english_test/database/answer_question_storage.dart';
import 'package:english_test/database/title_question_entity.dart';
import 'package:english_test/models/entities/answer_question_entity.dart';
import 'package:english_test/models/entities/question_entity.dart';
import 'package:english_test/models/entities/title_question_entity.dart';
import 'package:english_test/models/enums/exam_part_type.dart';
import 'package:english_test/models/enums/loading_status.dart';
import 'package:english_test/models/enums/question_type.dart';
import 'package:equatable/equatable.dart';

part 'question_state.dart';

class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit() : super(const QuestionState());

  void init({
    required QuestionType questionType,
    required ExamPartType examPart,
  }) {
    emit(
      state.copyWith(
        currentQuestion: QuestionEntity(
          titleQuestionEntity: TitleQuestionEntity(
            title: "What is the topic of this passage?",
            idTitleQuestion: "R11",
            answerQuestionEntity: AnswerQuestionEntity(
              idAnswerQuestion: "R11",
              answer: "Raising a family of great horned owls",
            ),
            questionType: QuestionType.reading,
          ),
          listAnswer: [],
          isCheck: true,
        ),
      ),
    );
    List<TitleQuestionEntity> listTitle = [];

    List<AnswerQuestionEntity> listAnswer = [];

    if(questionType == QuestionType.reading){
      if(examPart == ExamPartType.one){

      } else if(examPart == ExamPartType.two){

      } else if(examPart == ExamPartType.three){

      } else {

      }
    } else {

    }



  }

  void nextQuestion(){

  }

  void previousQuestion(){

  }
}
