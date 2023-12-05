import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar de volta para a Tela 1
            Navigator.pop(context);
          },
          child: const Text('Voltar para Tela 1'),
        ),
      ),
    );
  }
}
