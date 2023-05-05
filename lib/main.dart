import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaAPP());

class _PerguntaAppState extends State<PerguntaAPP> {
  int _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': "Qual sua cor favorita?",
      'resposta': ['Preto', 'vermelho ', 'Verde', 'Branco']
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

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    // print('Pergunta respondida :D');
  }

   bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // for (var textoResp in repostas) {
    // widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Perguntas"),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  responder: _responder)
              : Resultado()),
    );
  }
}

class PerguntaAPP extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
