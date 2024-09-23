import 'package:flutter/material.dart';
import 'package:meuappflutter/ui/my_flutter_app_icons.dart';

class RoyalFlushScreen extends StatelessWidget {
  const RoyalFlushScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.secondary.withOpacity(0.7),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(MyFlutterApp.clovers_card, color: Colors.white),
            Icon(MyFlutterApp.hearts_card, color: Colors.white),
            Text(
              "ROYAL FLUSH",
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
                'assets/images/royal_flush.webp',
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
