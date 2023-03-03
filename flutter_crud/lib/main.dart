import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
    perguntaSelecionada++;
    });
    
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          body: Column(
            children: [
              Text(perguntas[perguntaSelecionada]),
              OutlinedButton(
                  onPressed: responder, child: const Text('Resposta 1')),
              OutlinedButton(
                  onPressed: responder, child: const Text('Resposta 2')),
              OutlinedButton(
                  onPressed: responder, child: const Text('Resposta 3')),
            ],
          )),
    );
  }
}
