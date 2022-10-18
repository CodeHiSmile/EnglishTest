import 'package:bloc/bloc.dart';
import 'package:english_test/models/enums/loading_status.dart';
import 'package:equatable/equatable.dart';

part 'question_state.dart';

class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit() : super(QuestionState());
}
