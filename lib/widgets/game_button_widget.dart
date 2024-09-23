
import 'package:flutter/material.dart';

class GameButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const GameButtonWidget({required this.label, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
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
}
