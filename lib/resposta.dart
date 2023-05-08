import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final Function() quandoSelecionado;

  const Resposta(this.resposta, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed: quandoSelecionado,
      child: Text(resposta),
      style: TextButton.styleFrom(backgroundColor: Colors.deepPurple, fixedSize: Size(1000, 10)),

    );
  }
}
 