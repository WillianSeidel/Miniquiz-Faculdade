import 'package:flutter/material.dart';
import 'package:mini_quiz_uninter/Models/model.dart';
import 'package:mini_quiz_uninter/screens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  final QuizSet quizSet;

  const QuizScreen({super.key, required this.quizSet});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  List<int?> selectedAnswers = [];
  bool isAnswered = false;

  @override
  void initState() {
    super.initState();
    selectedAnswers = List<int?>.filled(widget.quizSet.questions.length, null);
  }

  void goToNextQuestion() {
    if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        isAnswered = false;
      });
    }
  }

  void goToPreviousQuestion() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
        isAnswered = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Question currentQuestion =
        widget.quizSet.questions[currentQuestionIndex];
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 3, 16, 92),
                Color.fromARGB(255, 37, 229, 243),
              ]),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      widget.quizSet.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text(
                      currentQuestion.question,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ...currentQuestion.options.asMap().entries.map((entry) {
                      final index = entry.key;
                      final option = entry.value;
                      Color? backgroundColor;

                      if (isAnswered) {
                        if (index == currentQuestion.correctOption) {
                          backgroundColor = Colors.green;
                        } else if (index ==
                            selectedAnswers[currentQuestionIndex]) {
                          backgroundColor = Colors.red;
                        } else {
                          backgroundColor = Colors.white;
                        }
                      } else {
                        backgroundColor =
                            selectedAnswers[currentQuestionIndex] == index
                                ? Colors.indigo
                                : Colors.white;
                      }

                      return GestureDetector(
                        onTap: () {
                          if (!isAnswered) {
                            setState(() {
                              selectedAnswers[currentQuestionIndex] = index;
                            });
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: backgroundColor,
                            border: Border.all(
                              width: 2,
                              color:
                                  selectedAnswers[currentQuestionIndex] == index
                                      ? Colors.indigo
                                      : Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              option,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: selectedAnswers[currentQuestionIndex] ==
                                            index &&
                                        !isAnswered
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    currentQuestionIndex > 0
                        ? ElevatedButton(
                            onPressed: goToPreviousQuestion,
                            child: const Text(
                              '  Voltar  ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ))
                        : const SizedBox(),
                    ElevatedButton(
                        onPressed: selectedAnswers[currentQuestionIndex] != null
                            ? () {
                                setState(() {
                                  isAnswered = true;
                                });

                                Future.delayed(const Duration(seconds: 2), () {
                                  if (currentQuestionIndex <
                                      widget.quizSet.questions.length - 1) {
                                    goToNextQuestion();
                                  } else {
                                    int totalCorrect = 0;
                                    for (int i = 0;
                                        i < widget.quizSet.questions.length;
                                        i++) {
                                      if (selectedAnswers[i] ==
                                          widget.quizSet.questions[i]
                                              .correctOption) {
                                        totalCorrect++;
                                      }
                                    }
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ResultScreen(
                                            totalQuestions:
                                                widget.quizSet.questions.length,
                                            totalAttempts:
                                                widget.quizSet.questions.length,
                                            totalCorrect: totalCorrect,
                                            totalScore: totalCorrect * 10,
                                            quizSet: widget.quizSet,
                                          ),
                                        ));
                                  }
                                });
                              }
                            : null,
                        child: Text(
                          currentQuestionIndex ==
                                  widget.quizSet.questions.length - 1
                              ? '  Enviar  '
                              : 'Avançar',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
