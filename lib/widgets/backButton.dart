import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Widget backButton({
  required VoidCallback onPressed,
  Color color = const Color(0xFFE1E1E1),
  double size = 30.0,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0),
    child: IconButton(
      icon: Icon(
        PhosphorIcons.caretCircleLeftFill,
        color: color,
        size: size,
      ),
      onPressed: onPressed,
    ),
  );
}
