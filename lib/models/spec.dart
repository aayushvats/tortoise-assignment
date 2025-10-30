import 'package:flutter/cupertino.dart';

class Spec {
  final Icon icon;
  final String title;
  final String content;

  Spec({
    required this.icon,
    required this.title,
    required this.content,
  });

  factory Spec.fromJson(Map<String, dynamic> json) {
    return Spec(
      icon: Icon(
        IconData(
          json['iconCodePoint'],
          fontFamily: json['iconFontFamily'],
          fontPackage: json['iconFontPackage'],
        ),
      ),
      title: json['title'],
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'iconCodePoint': icon.icon!.codePoint,
      'iconFontFamily': icon.icon!.fontFamily,
      'iconFontPackage': icon.icon!.fontPackage,
      'title': title,
      'content': content,
    };
  }
}