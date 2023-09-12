import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((question) {
            bool isCorrectAnswer =
                (question['user_answer'] == question['correct_answer']);
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: (isCorrectAnswer
                        ? const Color.fromARGB(255, 97, 228, 156)
                        : const Color.fromARGB(255, 202, 67, 123)),
                    child: Text(
                      ((question['question_index'] as int) + 1).toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 4, right: 4, bottom: 4, top: 8),
                        child: Text(
                          '${question['question']}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Text('${question['user_answer']}',
                            style: const TextStyle(color: Colors.grey)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Text(
                          '${question['correct_answer']}',
                          style: const TextStyle(color: Colors.lightGreen),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
