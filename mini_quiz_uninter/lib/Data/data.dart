import 'package:mini_quiz_uninter/Models/model.dart';

class Data {
  static List<Category> categories = [
    Category(name: 'Métodos Ágeis', image: 'assets/mta.png', quizSets: [
      QuizSet(name: '[01] - Métodos Ágeis', questions: [
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
      QuizSet(name: '[02] - Métodos Ágeis', questions: [
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
      QuizSet(name: '[03] - Métodos Ágeis', questions: [
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
    Category(name: 'Em Construção', image: 'assets/mta.png', quizSets: [])
  ];
}
