import 'package:flutter/material.dart';
import 'package:mini_quiz_uninter/Data/data.dart';
import 'package:mini_quiz_uninter/Models/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pokemon Quiz'),
        ),
        body: const QuestionWidget(),
      ),
    );
  }
}

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({Key? key}) : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  int _questionNumber = 0;
  int _score = 0;
  final List<Question> _questions = questions;

  void _selectOption(Option option) {
    setState(() {
      if (_questions[_questionNumber].isLocked) return;

      _questions[_questionNumber].isLocked = true;
      _questions[_questionNumber].selectedOption = option;

      if (option.isCorrect) {
        _score++;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      if (_questionNumber < _questions.length - 1) {
        _questionNumber++;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              score: _score,
              totalQuestions: _questions.length,
              onRestart: _restartQuiz,
            ),
          ),
        );
      }
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionNumber = 0;
      _score = 0;
      for (var question in _questions) {
        question.isLocked = false;
        question.selectedOption = null;
      }
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final question = _questions[_questionNumber];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Text('Questão ${_questionNumber + 1}/${_questions.length}'),
          const Divider(thickness: 1, color: Colors.grey),
          Expanded(
            child: buildQuestion(question),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: question.isLocked ? _nextQuestion : null,
            child: const Text('Próxima'),
          ),
        ],
      ),
    );
  }

  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text(
          question.text,
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 20),
        ...question.options.map((option) {
          return ListTile(
            title: Text(option.text),
            leading: Radio<Option>(
              value: option,
              groupValue: question.selectedOption,
              onChanged: question.isLocked
                  ? null
                  : (Option? value) {
                      _selectOption(value!);
                    },
            ),
          );
        }).toList(),
        if (question.isLocked) ...[
          const SizedBox(height: 20),
          Text(
            question.selectedOption!.isCorrect ? 'Correto!' : 'Errado!',
            style: TextStyle(
              fontSize: 20,
              color: question.selectedOption!.isCorrect
                  ? Colors.green
                  : Colors.red,
            ),
          ),
        ]
      ],
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final VoidCallback onRestart;

  const ResultScreen({
    Key? key,
    required this.score,
    required this.totalQuestions,
    required this.onRestart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Results'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Você acertou 0$score de 0$totalQuestions questões!',
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                onRestart();
              },
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
