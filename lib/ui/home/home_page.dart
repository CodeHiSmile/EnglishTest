import 'package:english_test/common/app_colors.dart';
import 'package:english_test/common/app_text_styles.dart';
import 'package:english_test/models/enums/question_type.dart';
import 'package:english_test/ui/choose_exam/choose_exam_page.dart';
import 'package:english_test/ui/component/button_primary.dart';
import 'package:english_test/ui/history/history_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ôn tập tiếng Anh"),
        backgroundColor: AppColors.mainBlue,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            ButtonPrimary(
              title: "Reading",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChooseExamPage(
                      questionType: QuestionType.reading,
                    ),
                  ),
                );
              },
            ),
            ButtonPrimary(
              title: "Writing",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChooseExamPage(
                      questionType: QuestionType.writing,
                    ),
                  ),
                );
              },
            ),
            ButtonPrimary(
              title: "History",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HistoryPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
