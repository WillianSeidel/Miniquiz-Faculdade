import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_quiz_uninter/Models/model.dart';
import 'package:mini_quiz_uninter/screens/quiz_screen.dart';

class CategorySetScreen extends StatelessWidget {
  final Category category;

  const CategorySetScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
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
                      'Test your Skill',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: category.quizSets.length,
                itemBuilder: (context, index) {
                  final QuizSet = category.quizSets[index];
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    QuizScreen(quizSet: QuizSet)));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 1,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                category.image,
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(width: 20),
                              Text(QuizSet.name,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          )),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
