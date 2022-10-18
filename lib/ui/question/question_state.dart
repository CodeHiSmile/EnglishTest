part of 'question_cubit.dart';

class QuestionState extends Equatable {
  final LoadingStatus? loadingStatus;

  const QuestionState({
    this.loadingStatus = LoadingStatus.initial,
  });

  QuestionState copyWith({
    LoadingStatus? loadStatus,
  }) {
    return QuestionState(
      loadingStatus: loadStatus,
    );
  }

  @override
  List<Object> get props => [];
}
