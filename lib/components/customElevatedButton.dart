import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.witdh,
  });

  final VoidCallback onPressed;
  final String text;
  final double? witdh;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return ElevatedButton(
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        minimumSize: Size(witdh ?? double.infinity, 50),
        backgroundColor: theme.primary,
        foregroundColor: theme.surface,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
