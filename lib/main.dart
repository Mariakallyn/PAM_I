import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 34, 255, 122)),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("meu primeiro app"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Text("programacao"),
            Text("aplicativos"),
            Text("Mobile"),
            Column(
              children: [
                Text("Maria Kallyne"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("2H3"),
                    Text("2024"),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//void main() {
//runApp(const Aplicacao());
//}

void main() => runApp(const Aplicacao());
