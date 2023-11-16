import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario, {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text(style: const TextStyle(fontSize: 28), fraseResultado)),
        ElevatedButton(
          onPressed: quandoReiniciarQuestionario,
          style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.blue),
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
          child: const Text('Reiniciar'),
        )
      ],
    );
  }
}
