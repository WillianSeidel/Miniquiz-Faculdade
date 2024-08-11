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
            correctOption: 0),
        Question(
            question:
                'Qual framework ágil é conhecido por sua ênfase em entregas incrementais e iterativas?',
            options: ['Scrum', 'Kanban', 'Lean', 'XP (Extreme Programming)'],
            correctOption: 0),
        Question(
            question: 'Qual dos seguintes não é um valor do Manifesto Ágil?',
            options: [
              'Processos e ferramentas',
              'Indivíduos e interações',
              'Software funcionando',
              'Colaboração com o cliente'
            ],
            correctOption: 1),
        Question(
            question: 'Quem é geralmente considerado o criador do Scrum?',
            options: [
              'Jeff Sutherland',
              'Ken Schwaber',
              'Clark Kent',
              'Dave Thomas'
            ],
            correctOption: 1),
        Question(
            question: 'O que o termo "Sprint" representa em Scrum?',
            options: [
              'Uma reunião diária',
              'Um ciclo de desenvolvimento fixo',
              'Um planejamento de release',
              'Uma técnica de estimativa'
            ],
            correctOption: 1),
        Question(
            question:
                'Qual técnica é usada para priorizar o backlog do produto em Scrum?',
            options: [
              'MoSCoW',
              'Planning Poker',
              'Pareto Analysis',
              'Gantt Chart'
            ],
            correctOption: 1),
        Question(
            question:
                'O que é um "Kanban board" usado para rastrear em um processo ágil?',
            options: [
              'Atividades a serem concluídas',
              'Histórico de bugs',
              'Estórias de usuário',
              'Itens em progresso'
            ],
            correctOption: 0),
        Question(
            question: 'Qual é o objetivo do retrospectiva em Scrum?',
            options: [
              'Revisar o progresso da sprint',
              'Celebrar o sucesso da equipe',
              'Identificar áreas para melhorias contínuas',
              'Estimar o esforço para as próximas sprints'
            ],
            correctOption: 2),
        Question(
            question: 'Qual dos seguintes não é um princípio do Lean?',
            options: [
              'Eliminar desperdício',
              'Amplificar o aprendizado',
              'Adicionar mais etapas ao processo',
              'Entregar rapidamente'
            ],
            correctOption: 0),
        Question(
            question: 'Quais são os três pilares do framework Scrum?',
            options: [
              'Transparência, Inspeção, Adaptação',
              'Planejamento, Execução, Controle',
              'Planejamento, Feedback, Melhoria',
              'Criação, Avaliação, Refatoração'
            ],
            correctOption: 0)
      ]),
      QuizSet(name: '[02] - Métodos Ágeis', questions: [
        Question(
            question:
                'O que significa a sigla "MoSCoW" em gestão de requisitos ágeis?',
            options: [
              'Must, Should, Could, Would',
              'Major, Secondary, Critical, Worthless ',
              'Mandatory, Selective, Conditional, Wishful',
              'Model, Scope, Cost, Worth '
            ],
            correctOption: 3),
        Question(
            question: 'O que é um "Sprint Retrospective" em Scrum?',
            options: [
              'Uma reunião diária para revisar o progresso da equipe',
              'Uma reunião para revisar o trabalho concluído durante a sprint',
              'Uma reunião para inspecionar e adaptar o processo de desenvolvimento',
              'Uma reunião para planejar as atividades da próxima sprint'
            ],
            correctOption: 2),
        Question(
            question: 'Qual é a diferença principal entre Scrum e Kanban?',
            options: [
              'Scrum é iterativo e Kanban é contínuo',
              'Scrum é mais adequado para equipes pequenas',
              'Kanban enfatiza mais a entrega de valor contínua',
              'Scrum requer papéis mais definidos na equipe'
            ],
            correctOption: 2),
        Question(
            question: 'Qual é o objetivo do "burndown chart" em Scrum?',
            options: [
              'Acompanhar o progresso da equipe ao longo da sprint',
              'Monitorar o uso de recursos da equipe ao longo do tempo',
              'Identificar problemas de qualidade no código',
              'Priorizar o backlog do produto'
            ],
            correctOption: 1),
        Question(
            question:
                'Qual é o principal objetivo do Scrum Master em um time Scrum?',
            options: [
              'Gerenciar o backlog do produto',
              'Facilitar o progresso da equipe',
              'Definir a visão do produto',
              'Desenvolver o software'
            ],
            correctOption: 1),
        Question(
            question: 'Qual é a duração típica de uma sprint em Scrum?',
            options: ['2 a 4 semanas', '1 dia', '6 meses', '1 ano'],
            correctOption: 0),
        Question(
            question: 'O que significa "WIP" em Kanban?',
            options: [
              'Work In Progress',
              'Work In Planning',
              'Work In Production',
              'Work In Process'
            ],
            correctOption: 0),
        Question(
            question: 'Qual é o papel do "Burnup Chart" em metodologias ágeis?',
            options: [
              'Mostrar o trabalho restante em uma sprint',
              'Mostrar o progresso realizado e o trabalho total planejado',
              'Identificar bugs e problemas',
              'Gerenciar recursos da equipe'
            ],
            correctOption: 1),
        Question(
            question: 'Qual é a função do "Impediment Log" em Scrum?',
            options: [
              'Registrar e rastrear obstáculos que impedem o progresso da equipe',
              'Listar as tarefas a serem feitas na sprint',
              'Priorizar requisitos do produto',
              'Documentar bugs encontrados no software'
            ],
            correctOption: 0),
        Question(
            question: 'O que é uma "Spike" em metodologias ágeis?',
            options: [
              'Uma tarefa de pesquisa ou experimento para reduzir incertezas',
              'Uma técnica de estimativa de esforço',
              'Um tipo de teste de integração',
              'Um bug crítico no software'
            ],
            correctOption: 0)
      ]),
      QuizSet(name: '[03] - Métodos Ágeis', questions: [
        Question(
            question: 'Em construção',
            options: ['', '', '', ''],
            correctOption: 0),
      ]),
    ]),
    Category(
        name: 'Inteligência Artificial',
        image: 'assets/ia.png',
        quizSets: [
          QuizSet(name: '[01] - Inteligência Artificial', questions: [
            Question(
                question: 'O que é machine learning?',
                options: [
                  'Uma técnica de construção de hardware',
                  'Um método de análise de dados que automatiza a construção de modelos analíticos',
                  'Um tipo de sistema operacional',
                  'Uma linguagem de programação'
                ],
                correctOption: 1),
            Question(
                question: 'O que é um "neural network" (rede neural)?',
                options: [
                  'Uma rede de computadores interconectados',
                  'Um modelo de machine learning inspirado no cérebro humano',
                  'Um software para edição de vídeos',
                  'Um método de criptografia'
                ],
                correctOption: 1),
            Question(
                question: 'O que significa "NLP" em inteligência artificial?',
                options: [
                  'Natural Language Processing (Processamento de Linguagem Natural)',
                  'Network Layer Protocol (Protocolo de Camada de Rede)',
                  'Neural Learning Process (Processo de Aprendizado Neural)',
                  'Non-Linear Programming (Programação Não Linear)'
                ],
                correctOption: 0),
            Question(
                question:
                    'Qual é o principal uso de algoritmos de clustering em machine learning?',
                options: [
                  'Agrupar dados em clusters baseados em características semelhantes',
                  'Prever valores futuros',
                  'Classificar dados em categorias',
                  'Reduzir o tamanho dos dados'
                ],
                correctOption: 0),
            Question(
                question:
                    'Qual dos seguintes é um exemplo de IA aplicada ao reconhecimento de imagem?',
                options: [
                  'Google Maps',
                  'Classificação de fotos em álbuns por rostos',
                  'Processamento de linguagem natural',
                  'Assistentes de voz'
                ],
                correctOption: 1),
            Question(
                question: 'O que é deep learning?',
                options: [
                  'Um subcampo de machine learning que usa redes neurais com muitas camadas (profundas)',
                  'Um método para resolver equações diferenciais',
                  'Uma técnica para acelerar redes de computadores',
                  'Um processo para minerar dados'
                ],
                correctOption: 0),
            Question(
                question:
                    'Qual é o objetivo dos algoritmos de reinforcement learning?',
                options: [
                  'Agrupar dados semelhantes',
                  'Treinar agentes para tomar decisões através de recompensas e punições',
                  'Prever categorias de dados',
                  'Analisar dados estatísticos'
                ],
                correctOption: 1),
            Question(
                question: 'O que é um chatbot?',
                options: [
                  'Um software de edição de imagens',
                  'Um programa de computador que simula conversas humanas',
                  'Uma ferramenta para monitoramento de redes',
                  'Um dispositivo de armazenamento de dados'
                ],
                correctOption: 1),
            Question(
                question:
                    'Qual é o principal propósito dos "convolutional neural networks" (CNNs) em IA?',
                options: [
                  'Gerenciar grandes bases de dados',
                  'Analisar e reconhecer padrões em imagens e vídeos',
                  'Processar linguagem natural',
                  'Melhorar a velocidade de processamento de texto'
                ],
                correctOption: 1),
            Question(
                question:
                    'Qual é a principal vantagem dos algoritmos de "unsupervised learning" (aprendizado não supervisionado)?',
                options: [
                  'Requerem grandes quantidades de dados rotulados',
                  'Podem identificar padrões ocultos em dados sem rótulos',
                  'São mais rápidos que os algoritmos supervisionados',
                  'Não necessitam de validação'
                ],
                correctOption: 1)
          ])
        ]),
    Category(
        name: 'Em Construção', image: 'assets/construcao.png', quizSets: []),
    Category(
        name: 'Em Construção', image: 'assets/construcao.png', quizSets: [])
  ];
}
