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
  HomeScreen({super.key});

  final buttons = <String, Widget>{
    'CARTA ALTA': const CartaAltaScreen(),
    'PAR': const ParScreen(),
    'DOIS PARES': const DoisParesScreen(),
    'TRINCA': const TrincaScreen(),
    'SEQUENCIA': const StraightScreen(),
    'FLUSH': const FlushScreen(),
    'FULL HOUSE': const FullHouseScreen(),
    'QUADRA': const QuadraScreen(),
    'STRAIGHT FLUSH': const StraightFlushScreen(),
    'ROYAL FLUSH': const RoyalFlushScreen(),
  };

  void goToScreen({required BuildContext context, required Widget screen}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

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
          children: buttons.keys
              .map(
                (label) => GameButtonWidget(
                  label: label,
                  onPressed: () =>
                      goToScreen(context: context, screen: buttons[label]!),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
