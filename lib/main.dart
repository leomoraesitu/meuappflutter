import 'package:flutter/material.dart';
import 'package:meuappflutter/my_flutter_app_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador Poker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 75, 75, 75)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'RANKING DE MÃOS NO POKER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget buildButton(String label) {
    return Container(
      width: 300.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0), // Espaçamento entre os botões
      child: ElevatedButton(
        onPressed: () {
          
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Bordas quadradas
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.secondary.withOpacity(0.7),
        title: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(MyFlutterApp.clovers_card, color: Colors.white),
              const SizedBox(width: 8),
              const Icon(MyFlutterApp.hearts_card, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                widget.title,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              const SizedBox(width: 8),
              const Icon(MyFlutterApp.spades_card, color: Colors.white),
              const SizedBox(width: 8),
              const Icon(MyFlutterApp.diamonds_card, color: Colors.white),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[            
            buildButton('CARTA ALTA'),
            buildButton('PAR'),
            buildButton('DOIS PARES'),
            buildButton('TRINCA'),
            buildButton('STRAIGHT'),
            buildButton('FLUSH'),
            buildButton('FULL HOUSE'),
            buildButton('FOUR OF A KIND'),
            buildButton('STRAIGHT FLUSH'),
            buildButton('ROYAL FLUSH'),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade900,
    );
  }
}
