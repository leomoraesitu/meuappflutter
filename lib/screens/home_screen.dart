import 'package:flutter/material.dart';
import 'package:meuappflutter/ui/my_flutter_app_icons.dart';
import 'package:meuappflutter/widgets/game_button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.secondary.withOpacity(0.7),
        title: const Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(MyFlutterApp.clovers_card, color: Colors.white),
              SizedBox(width: 8),
              Icon(MyFlutterApp.hearts_card, color: Colors.white),
              SizedBox(width: 8),
              Text(
                "RANKING DE MÃOS NO POKER",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(width: 8),
              Icon(MyFlutterApp.spades_card, color: Colors.white),
              SizedBox(width: 8),
              Icon(MyFlutterApp.diamonds_card, color: Colors.white),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GameButtonWidget(label: 'CARTA ALTA'),
            GameButtonWidget(label: 'PAR'),
            GameButtonWidget(label: 'DOIS PARES'),
            GameButtonWidget(label: 'TRINCA'),
            GameButtonWidget(label: 'STRAIGHT'),
            GameButtonWidget(label: 'FLUSH'),
            GameButtonWidget(label: 'FULL HOUSE'),
            GameButtonWidget(label: 'FOUR OF A KIND'),
            GameButtonWidget(label: 'STRAIGHT FLUSH'),
            GameButtonWidget(label: 'ROYAL FLUSH'),
          ],
        ),
      ),
    );
  }
}
