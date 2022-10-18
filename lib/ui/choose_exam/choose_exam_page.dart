import 'package:english_test/common/app_colors.dart';
import 'package:english_test/models/enums/exam_part_type.dart';
import 'package:english_test/models/enums/question_type.dart';
import 'package:english_test/ui/component/behavior_custom.dart';
import 'package:english_test/ui/component/button_primary.dart';
import 'package:flutter/material.dart';

import '../question/question_page.dart';

class ChooseExamPage extends StatefulWidget {
  final QuestionType questionType;

  const ChooseExamPage({
    Key? key,
    required this.questionType,
  }) : super(key: key);

  @override
  State<ChooseExamPage> createState() => _ChooseExamPageState();
}

class _ChooseExamPageState extends State<ChooseExamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chọn phần thi"),
        backgroundColor: AppColors.mainBlue,
      ),
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: BehaviorCustom(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ButtonPrimary(
                  title: widget.questionType == QuestionType.reading
                      ? "Reading 1"
                      : "Writing 1",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuestionPage(
                          questionType: QuestionType.reading,
                          examPart: ExamPartType.one,
                        ),
                      ),
                    );
                  },
                ),
                ButtonPrimary(
                  title: widget.questionType == QuestionType.reading
                      ? "Reading 2"
                      : "Writing 2",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuestionPage(
                          questionType: QuestionType.reading,
                          examPart: ExamPartType.two,
                        ),
                      ),
                    );
                  },
                ),
                ButtonPrimary(
                  title: widget.questionType == QuestionType.reading
                      ? "Reading 3"
                      : "Writing 3",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuestionPage(
                          questionType: QuestionType.reading,
                          examPart: ExamPartType.three,
                        ),
                      ),
                    );
                  },
                ),
                ButtonPrimary(
                  title: "Tổng hợp",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuestionPage(
                          questionType: QuestionType.reading,
                          examPart: ExamPartType.all,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
