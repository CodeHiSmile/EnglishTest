part of 'question_cubit.dart';

class QuestionState extends Equatable {
  final LoadingStatus? loadingStatus;
  final List<QuestionEntity>? listQuestion;
  final QuestionEntity? currentQuestion;
  final int? indexCurrentQuestion;
  final int? totalQuestion;

  const QuestionState({
    this.loadingStatus = LoadingStatus.initial,
    this.listQuestion,
    this.currentQuestion,
    this.indexCurrentQuestion = 1,
    this.totalQuestion = 1,
  });

  QuestionState copyWith({
    LoadingStatus? loadingStatus,
    List<QuestionEntity>? listQuestion,
    QuestionEntity? currentQuestion,
    int? indexCurrentQuestion,
    int? totalQuestion,
  }) {
    return QuestionState(
      loadingStatus: loadingStatus,
      listQuestion: listQuestion,
      currentQuestion: currentQuestion,
      indexCurrentQuestion: indexCurrentQuestion,
      totalQuestion: totalQuestion,
    );
  }

  @override
  List<Object?> get props => [
        loadingStatus,
        currentQuestion,
        listQuestion,
        indexCurrentQuestion,
        totalQuestion,
      ];
}
