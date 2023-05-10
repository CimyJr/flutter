import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(
      {super.key,
      required this.pontuacao,
      required this.quandoReiniciarQuestionario});
  final pontuacao;
  final Function() quandoReiniciarQuestionario;

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 32),
          ),
        ), TextButton(
          onPressed: quandoReiniciarQuestionario, 
          style: TextButton.styleFrom(foregroundColor: Colors.deepPurple),
          child: const Text('Reiniciar'),
         ),
      ],
    );
  }
}
