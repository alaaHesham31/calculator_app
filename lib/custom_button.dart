import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color color;
  final Function onClick;

  CustomButton({super.key, required this.label, required this.color, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            onClick(label);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 32,
              color:  Color(0xFF339DFF),
            ),
          ),
        ),
      ),
    );
  }
}
