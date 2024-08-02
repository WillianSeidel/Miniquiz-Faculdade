import 'package:mini_quiz_uninter/Models/model.dart';

class Data {
  static List<Category> categories = [
    Category(name: 'Métodos Ageis', image: 'assets/mta.png', quizSets: [
      QuizSet(name: 'quiz 0001', questions: [
        Question(
            question: 'Qual pokemon',
            options: ['pikachu', 'charmander', 'bulba', 'onix'],
            selectedIndex: 0),
        Question(
            question: 'Qual bola',
            options: ['redonda', 'quadrada', 'bulba', 'onix'],
            selectedIndex: 0),
        Question(
            question: 'Qual cor',
            options: ['azul', 'tijolo', 'bulba', 'onix'],
            selectedIndex: 0),
        Question(
            question: 'Qual animaml',
            options: ['dog', 'car', 'bird', 'onix'],
            selectedIndex: 3),
      ]),
    ]),
    Category(name: 'Em Construção', image: 'assets/mta.png', quizSets: []),
    Category(name: 'Em Construção', image: 'assets/mta.png', quizSets: []),
    Category(name: 'Em Contrução', image: 'assets/mta.png', quizSets: [])
  ];
}
