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
  int currentQuiestionIndex = 0;
  List<int?> selectedAnswers = [];
  @override
  void initState() {
    super.initState();
    selectedAnswers = List<int?>.filled(widget.quizSet.questions.length, null);
  }

  void goToNextQuestion() {
    if (currentQuiestionIndex < widget.quizSet.questions.length - 1) {
      setState(() {
        currentQuiestionIndex++;
      });
    }
  }

  void goToPreviousQuestion() {
    if (currentQuiestionIndex > 0) {
      setState(() {
        currentQuiestionIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Question currentQuiestion =
        widget.quizSet.questions[currentQuiestionIndex];
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
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
              SizedBox(height: 35),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      widget.quizSet.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text(
                      currentQuiestion.question,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ...currentQuiestion.options.asMap().entries.map((entry) {
                      final index = entry.key;
                      final option = entry.value;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedAnswers[currentQuiestionIndex] = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color:
                                selectedAnswers[currentQuiestionIndex] == index
                                    ? Colors.indigo
                                    : Colors.white,
                            border: Border.all(
                              width: 2,
                              color: selectedAnswers[currentQuiestionIndex] ==
                                      index
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
                                color: selectedAnswers[currentQuiestionIndex] ==
                                        index
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
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    currentQuiestionIndex > 0
                        ? ElevatedButton(
                            onPressed: goToPreviousQuestion,
                            child: Text(
                              '  Voltar  ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ))
                        : SizedBox(),
                    ElevatedButton(
                        onPressed: () {
                          if (currentQuiestionIndex <
                              widget.quizSet.questions.length - 1) {
                            goToNextQuestion();
                          } else {
                            int totalCorrect = 0;
                            for (int i = 0;
                                i < widget.quizSet.questions.length;
                                i++) {
                              if (selectedAnswers[i] ==
                                  widget.quizSet.questions[i].selectedIndex) {
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
                        },
                        child: Text(
                          currentQuiestionIndex ==
                                  widget.quizSet.questions.length - 1
                              ? '  Enviar  '
                              : 'Avançar',
                          style: TextStyle(
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
