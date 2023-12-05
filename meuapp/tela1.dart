import 'package:flutter/material.dart';

import 'tela2.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar para a Tela 2
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Tela2()),
            );
          },
          child: const Text('Ir para Tela 2'),
        ),
      ),
    );
  }
}
