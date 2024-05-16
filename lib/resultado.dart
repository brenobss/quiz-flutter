import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key, required this.acertos});

  final int acertos;

  @override
  Widget build(BuildContext context) {
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
              Text(
                'Resultado',
                style: TextStyle(fontSize: 20),
              ),
              Text('Você acertou\n $acertos de 10\n perguntas',
                  style: TextStyle(fontSize: 20)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('clicou');
                  },
                  child: Text(
                    'Jogar Novamente',
                    style: TextStyle(fontSize: 35),
                  ),
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
