import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quiz Flutter')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlutterLogo(
                size: 250,
              ),
              ElevatedButton(
                onPressed: () {
                  print('clicou');
                },
                child: Text(
                  'Jogar',
                  style: TextStyle(fontSize: 35),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
