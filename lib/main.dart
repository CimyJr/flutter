import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaAPP());

class _PerguntaAppState extends State<PerguntaAPP> {
  int perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print('Pergunta respondida :D');
  }

  @override
  Widget build(BuildContext context) {
    final List<Map> perguntas = [
      {
        'texto': "Qual sua cor favorita?",
        'resposta': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': "Qual seu animal favorito?",
        'resposta': ['Coelho', 'Cobra', 'Elefante', 'Macaco']
      },
      {
        'texto': "Qual seu instrutor preferido",
        'resposta': ['Maria', 'João', 'Pedro', 'Leo']
      },
    ];

    List<Widget> respostas = [];

    for (var textoResp in perguntas[perguntaSelecionada]['resposta']) {
      respostas.add(Resposta(textoResp, _responder));
    }

    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Perguntas"),
          ),
          body: Column(
            children: [
              Questao(perguntas[perguntaSelecionada]['texto']),
              ...respostas,
            ],
          )),
    );
  }
}

class PerguntaAPP extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
