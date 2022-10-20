import 'package:english_test/models/enums/exam_part_type.dart';
import 'package:english_test/models/enums/question_type.dart';
import 'package:english_test/ui/question/question_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  late QuestionCubit _cubit;

  @override
  void initState() {
    _cubit = QuestionCubit();
    super.initState();
    _cubit.init(
      questionType: widget.questionType,
      examPart: widget.examPart,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<QuestionCubit, QuestionState>(
            builder: (context, state) {
              return Text(
                "Câu ${state.indexCurrentQuestion}/${state.totalQuestion}",
              );
            },
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 24,
            ),
            child: BlocBuilder<QuestionCubit, QuestionState>(
              bloc: _cubit,
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      state.currentQuestion?.titleQuestionEntity.title ??
                          'Câu hỏi đang cập nhật',
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount:
                            state.currentQuestion?.listAnswer.length ?? 4,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 12,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              state.currentQuestion?.listAnswer[index].answer ??
                                  'cau tra loi $index',
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 54,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                _cubit.previousQuestion();
                              },
                              child: Container(
                                height: 54,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.red,
                                ),
                                child: const Center(
                                  child: Text("Quay về"),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                _cubit.nextQuestion();
                              },
                              child: Container(
                                height: 54,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.green,
                                ),
                                child: const Center(
                                  child: const Text("Câu tiếp theo"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
