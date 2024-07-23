class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  Question(text: "Pikachu é um pokemon?", options: [
    const Option(text: "Elemento Agua", isCorrect: false),
    const Option(text: "Elemento Ar", isCorrect: false),
    const Option(text: "Elemento Eletrico", isCorrect: true),
    const Option(text: "Elemento Terra", isCorrect: true),
  ]),
  Question(
    text: "Electrabuzz é um pokemon?",
    options: [
      const Option(text: "Elemento Agua", isCorrect: false),
      const Option(text: "Elemento Ar", isCorrect: false),
      const Option(text: "Elemento Eletrico", isCorrect: true),
      const Option(text: "Elemento Terra", isCorrect: true),
    ],
  ),
  Question(
    text: "Voltorb é um pokemon?",
    options: [
      const Option(text: "Elemento Agua", isCorrect: false),
      const Option(text: "Elemento Ar", isCorrect: false),
      const Option(text: "Elemento Eletrico", isCorrect: true),
      const Option(text: "Elemento Terra", isCorrect: true),
    ],
  ),
  Question(
    text: "Raichu é um pokemon?",
    options: [
      const Option(text: "Elemento Agua", isCorrect: false),
      const Option(text: "Elemento Ar", isCorrect: false),
      const Option(text: "Elemento Eletrico", isCorrect: true),
      const Option(text: "Elemento Terra", isCorrect: true),
    ],
  ),
  Question(
    text: "Onix é um pokemon?",
    options: [
      const Option(text: "Elemento Agua", isCorrect: false),
      const Option(text: "Elemento Ar", isCorrect: false),
      const Option(text: "Elemento Eletrico", isCorrect: true),
      const Option(text: "Elemento Terra", isCorrect: true),
    ],
  ),
  Question(
    text: "Joelton é um pokemon?",
    options: [
      const Option(text: "Elemento Agua", isCorrect: false),
      const Option(text: "Elemento Ar", isCorrect: false),
      const Option(text: "Elemento Eletrico", isCorrect: true),
      const Option(text: "Elemento Terra", isCorrect: true),
    ],
  ),
  Question(
    text: "Marrep é um pokemon?",
    options: [
      const Option(text: "Elemento Agua", isCorrect: false),
      const Option(text: "Elemento Ar", isCorrect: false),
      const Option(text: "Elemento Eletrico", isCorrect: true),
      const Option(text: "Elemento Terra", isCorrect: true),
    ],
  ),
];
