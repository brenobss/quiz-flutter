import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    final List quiz = [
      {
        "pergunta": "O que é o Flutter?",
        "respostas": [
          "Uma linguagem",
          "Um aplicativo",
          "Um SDK",
          "Um notebook"
        ],
        "alternativa_correta": 3,
      }
    ];

    quiz.add({
      "pergunta": "O que é o Dart?",
      "respostas": [
        "Uma linguagem de programação",
        "Uma JDK",
        "Uma IDE",
        "Uma extensão do chrome",
      ]
    });
    // print("Dados do quiz:");
    // print(quiz);
    int numeroPergunta = 1;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quiz Flutter')),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Pergunta $numeroPergunta de 10',
                    style: TextStyle(fontSize: 20),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pergunta:\n' + quiz[numeroPergunta - 1]['pergunta'],
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('clicou');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
                  child: Text(
                    quiz[numeroPergunta - 1]['respostas'][0],
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('clicou');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
                  child: Text(
                    quiz[numeroPergunta - 1]['respostas'][1],
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('clicou');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
                  child: Text(
                    quiz[numeroPergunta - 1]['respostas'][2],
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('clicou');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
                  child: Text(
                    quiz[numeroPergunta - 1]['respostas'][3],
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
