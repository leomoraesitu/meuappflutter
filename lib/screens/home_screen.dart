import 'package:flutter/material.dart';
import 'package:meuappflutter/screens/flush_screen.dart';
import 'package:meuappflutter/screens/full_house_screen.dart';
import 'package:meuappflutter/screens/quadra_screen.dart';
import 'package:meuappflutter/screens/royal_flush_screen.dart';
import 'package:meuappflutter/screens/straight_flush_screen.dart';
import 'package:meuappflutter/screens/straight_screen.dart';
import 'package:meuappflutter/screens/trinca_screen.dart';
import 'package:meuappflutter/ui/my_flutter_app_icons.dart';
import 'package:meuappflutter/widgets/game_button_widget.dart';
import 'package:meuappflutter/screens/carta_alta_screen.dart';
import 'package:meuappflutter/screens/par_screen.dart';
import 'package:meuappflutter/screens/dois_pares_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.secondary.withOpacity(0.2),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GameButtonWidget(
              label: 'CARTA ALTA',
              onPressed: () => chamadaTelas(
                context,
                const CartaAltaScreen(),
              ),
            ),
            GameButtonWidget(
              label: 'PAR',
               onPressed: () => chamadaTelas(
                context,
                const ParScreen(),
              ),
            ),
            GameButtonWidget(
              label: 'DOIS PARES',
              onPressed: () => chamadaTelas(
                context,
                const DoisParesScreen(),
              ),
            ),
            GameButtonWidget(
              label: 'TRINCA',
               onPressed: () => chamadaTelas(
                context,
                const TrincaScreen(),
              ),
            ),
            GameButtonWidget(
              label: 'SEQUÊNCIA',
              onPressed: () => chamadaTelas(
                context,
                const StraightScreen(),
              ),
            ),
            GameButtonWidget(
              label: 'FLUSH',
               onPressed: () => chamadaTelas(
                context,
                const FlushScreen(),
              ),
            ),
            GameButtonWidget(
              label: 'FULL HOUSE',
               onPressed: () => chamadaTelas(
                context,
                const FullHouseScreen(),
              ),
            ),
            GameButtonWidget(
              label: 'QUADRA',
              onPressed: () => chamadaTelas(
                context,
                const QuadraScreen(),
              ),
            ),
            GameButtonWidget(
              label: 'STRAIGHT FLUSH',
               onPressed: () => chamadaTelas(
                context,
                const StraightFlushScreen(),
              ),
            ),
            GameButtonWidget(
              label: 'ROYAL FLUSH',
              onPressed: () => chamadaTelas(
                context,
                const RoyalFlushScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void chamadaTelas(BuildContext context, Widget tela) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => tela,
      ),
    );
  }
}
