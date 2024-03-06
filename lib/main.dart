import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  //construtor da classe
  const Aplicacao({super.key});

  //constroi o que sera renderizado
  //exibido ao usuario
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () => setState(() {}),
            icon: const Icon(Icons.refresh),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            caixa(),
            SizedBox(
              width: 200,
              height: 200,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                ),
                child: const Center(
                  child: Text("A"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget caixa() {
    return SizedBox(
      width: 150,
      height: 150,
      child: Container(
        decoration: BoxDecoration(
          color: getColor(),
        ),
        child: const Center(
          child: Text("A"),
        ),
      ),
    );
  }

  Color getColor() {
    final rand = Random();

    return Color.fromARGB(
      255,
      rand.nextInt(256),
    );
  }
}
