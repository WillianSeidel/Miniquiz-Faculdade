import 'package:mini_quiz_uninter/Models/model.dart';

class Data {
  static List<Category> categories = [
    Category(name: 'Métodos Ágeis', image: 'assets/metodos.png', quizSets: [
      QuizSet(name: '[01] - Métodos Ágeis', questions: [
        Question(
            question: 'O que são métodos ágeis?',
            options: [
              'É uma forma de acelerar entregas de um determinado projeto',
              'É uma forma de pular entregas de um determinado projeto',
              'É uma forma de resolver conflitos pessoais',
              'É uma forma de aprimorar habilidades pessoais'
            ],
            selectedIndex: 0),
        Question(
            question:
                'Qual framework ágil é conhecido por sua ênfase em entregas incrementais e iterativas?',
            options: ['Scrum', 'Kanban', 'Lean', 'XP (Extreme Programming)'],
            selectedIndex: 0),
        Question(
            question: 'Qual dos seguintes não é um valor do Manifesto Ágil?',
            options: [
              'Processos e ferramentas',
              'Indivíduos e interações',
              'Software funcionando',
              'Colaboração com o cliente'
            ],
            selectedIndex: 1),
        Question(
            question: 'Quem é geralmente considerado o criador do Scrum?',
            options: [
              'Jeff Sutherland',
              'Ken Schwaber',
              'Clark Kent',
              'Dave Thomas'
            ],
            selectedIndex: 1),
        Question(
            question: 'O que o termo "Sprint" representa em Scrum?',
            options: [
              'Uma reunião diária',
              'Um ciclo de desenvolvimento fixo',
              'Um planejamento de release',
              'Uma técnica de estimativa'
            ],
            selectedIndex: 1),
        Question(
            question:
                'Qual técnica é usada para priorizar o backlog do produto em Scrum?',
            options: [
              'MoSCoW',
              'Planning Poker',
              'Pareto Analysis',
              'Gantt Chart'
            ],
            selectedIndex: 1),
        Question(
            question:
                'O que é um "Kanban board" usado para rastrear em um processo ágil?',
            options: [
              'Atividades a serem concluídas',
              'Histórico de bugs',
              'Estórias de usuário',
              'Itens em progresso'
            ],
            selectedIndex: 0),
        Question(
            question: 'Qual é o objetivo do retrospectiva em Scrum?',
            options: [
              'Revisar o progresso da sprint',
              'Celebrar o sucesso da equipe',
              'Identificar áreas para melhorias contínuas',
              'Estimar o esforço para as próximas sprints'
            ],
            selectedIndex: 2),
        Question(
            question: 'Qual dos seguintes não é um princípio do Lean?',
            options: [
              'Eliminar desperdício',
              'Amplificar o aprendizado',
              'Adicionar mais etapas ao processo',
              'Entregar rapidamente'
            ],
            selectedIndex: 0),
        Question(
            question: 'Quais são os três pilares do framework Scrum?',
            options: [
              'Transparência, Inspeção, Adaptação',
              'Planejamento, Execução, Controle',
              'Planejamento, Feedback, Melhoria',
              'Criação, Avaliação, Refatoração'
            ],
            selectedIndex: 0)
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
            question: 'Teste', options: ['a', 'b', 'c', 'd'], selectedIndex: 0),
      ]),
    ]),
    Category(
        name: 'Inteligência Artificial', image: 'assets/ia.png', quizSets: []),
    Category(
        name: 'Em Construção', image: 'assets/construcao.png', quizSets: []),
    Category(
        name: 'Em Construção', image: 'assets/construcao.png', quizSets: [])
  ];
}
