import 'package:flutter/material.dart';

class Category {
  final Color color;
  final String title;
  final String documentName;
  final String titleImageUrl;
  final String patternImageUrl;
  final String circleImageUrl;

  const Category(
      {this.circleImageUrl,
      this.titleImageUrl,
      this.patternImageUrl,
      this.documentName,
      this.color,
      this.title});
}
