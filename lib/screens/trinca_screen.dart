import 'package:flutter/material.dart';
import 'package:meuappflutter/ui/my_flutter_app_icons.dart';

class TrincaScreen extends StatelessWidget {
  const TrincaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.secondary.withOpacity(0.2),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(MyFlutterApp.clovers_card, color: Colors.white),
            Icon(MyFlutterApp.hearts_card, color: Colors.white),
            Text(
              "TRINCA",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Icon(MyFlutterApp.spades_card, color: Colors.white),
            Icon(MyFlutterApp.diamonds_card, color: Colors.white),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform.translate(
              offset: const Offset(0, -30),
              child: Image.asset(
                'assets/images/trinca.webp',
                width: 500,
                height: 500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
