import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaAPP());

class _PerguntaAppState extends State<PerguntaAPP> {
  int _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': "Qual sua cor favorita?",
      'resposta': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'vermelho ', 'nota': 5},
        {'texto': 'Verde', 'nota': 3},
        {'texto': 'Branco', 'nota': 1},
      ]
    },
    {
      'texto': "Qual seu animal favorito?",
      'resposta': [
        {'texto': 'Coelho', 'nota': 3},
        {'texto': 'Cobra', 'nota': 10},
        {'texto': 'Elefante', 'nota': 1},
        {'texto': 'Macaco', 'nota': 5},
      ]
    },
    {
      'texto': "Qual seu instrutor preferido",
      'resposta': [
        {'texto': 'Maria', 'nota': 5},
        {'texto': 'João', 'nota': 1},
        {'texto': 'Pedro', 'nota': 10},
        {'texto': 'Leo', 'nota': 3},
      ]
    },
  ];

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
     print(_pontuacaoTotal);
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
              : Resultado(pontuacao: _pontuacaoTotal)),
    );
  }
}

class PerguntaAPP extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
