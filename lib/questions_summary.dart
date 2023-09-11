import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((question) {
        return Row(children: [
          Text(((question['question_index'] as int) + 1).toString()),
          Column(
            children: [
              Text(question['question'] as String),
              const SizedBox(
                height: 5,
              ),
              Text('You selected: ${question['user_answer']}'),
              Text('The correct answer is: ${question['correct_answer']}'),
            ],
          ),
        ]);
      }).toList(),
    );
  }
}
