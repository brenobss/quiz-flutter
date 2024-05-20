import 'package:flutter/material.dart';
import 'package:quiz/resultado.dart';
import 'quiz_data.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int acertos = 0;
  int erros = 0;
  int numeroPergunta = 1;

  @override
  Widget build(BuildContext context) {
    quiz.shuffle();
    void respondeu(int respostaNumero) {
      setState(() {
        if (quiz[numeroPergunta - 1]['alternativa_correta'] == respostaNumero) {
          print('Acertou');
          acertos++;
        } else {
          print('errou');
          erros++;
        }
        print('Acertos totais: $acertos erros totais: $erros');
      });
    }

    void atualizaPergunta() {
      setState(() {
        if (numeroPergunta == 10) {
          print('Terminou o quiz');
          print('$acertos');
          Navigator.pushNamed(context, 'Resultado',
              arguments: Argumentos(acertos));
        } else {
          numeroPergunta++;
        }
      });
    }

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
                    respondeu(1);
                    atualizaPergunta();
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
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
                    respondeu(2);
                    atualizaPergunta();
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
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
                    respondeu(3);
                    atualizaPergunta();
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
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
                    respondeu(4);
                    atualizaPergunta();
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
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
  }
}
