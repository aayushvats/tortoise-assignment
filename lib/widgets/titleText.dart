import 'package:flutter/material.dart';

Widget buildSubtitleText(
    String text, {
      Color color = Colors.black,
      TextAlign textAlign = TextAlign.start,
    }) {
  return Row(
    children: [
      Text(
        text,
        textAlign: textAlign,
        style: const TextStyle(
          fontFamily: 'Haffer SQ XH',
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 17,
          height: 26 / 16,
          letterSpacing: 0,
        ),
      ),
    ],
  );
}

Widget buildTitleText(
    String text, {
      Color color = Colors.black,
      TextAlign textAlign = TextAlign.start,
    }) {
  return Text(
    text,
    textAlign: textAlign,
    style: const TextStyle(
      fontFamily: 'Haffer SQ XH',
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: 21,
      height: 26 / 16,
      letterSpacing: 0,
    ),
  );
}

Widget buildLabelTitle(
    String text, {
      Color color = Colors.black38,
      TextAlign textAlign = TextAlign.start,
    }) {
  return Row(
    children: [
      SizedBox(width: 25,),
      Text(
        text.toUpperCase(),
        textAlign: textAlign,
        style: const TextStyle(
          fontFamily: 'Haffer SQ XH',
          fontWeight: FontWeight.w700,
          color: Colors.black26,
          fontSize: 13,
          height: 26 / 16,
          letterSpacing: 0,
        ),
      ),
    ],
  );
}

Widget buildLabelText(
    String text, {
      Color color = Colors.black,
      TextAlign textAlign = TextAlign.start,
    }) {
  return Row(
    children: [
      SizedBox(width: 25,),
      Text(
        text,
        textAlign: textAlign,
        style: const TextStyle(
          fontFamily: 'Haffer SQ XH',
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          fontSize: 16,
          height: 22 / 16,
          letterSpacing: 0,
        ),
      ),
    ],
  );
}