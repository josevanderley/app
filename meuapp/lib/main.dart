import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App Flutter',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: const Text('Voce esta na tela inicial'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Bem-vindo ao Meu App Flutter!',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 20),
          Image.asset(
            'C:/Users/Ornare/Desktop/app/meuapp/lib/assets', // Substitua pelo caminho da sua imagem
            height: 150,
            width: 150,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondScreen()),
              );
            },
            child: const Text('Ir para a Segunda Tela'),
          ),
        ],
      ),
    );
    return scaffold;
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voce esta na segunda tela'),
      ),
      body: const Center(
        child: Text('Esta é a Segunda Tela!'),
      ),
    );
  }
}
