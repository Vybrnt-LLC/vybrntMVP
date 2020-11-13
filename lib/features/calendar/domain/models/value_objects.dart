import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'package:vybrnt_mvp/core/auth/failures.dart';
import 'package:vybrnt_mvp/core/auth/value_transformers.dart';

import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/core/shared/category.dart';

class Categories extends ValueObject<Category> {
  static const List<Category> predefinedColors = [
    Category(
        color: Colors.red,
        title: 'Culture',
        documentName: 'Culture_Social',
        titleImageUrl: 'assets/categories/culture_title.png',
        patternImageUrl: 'assets/categories/culture_pattern.png'),
    Category(
        color: Colors.blue,
        title: 'Opportunity',
        documentName: 'Opportunity',
        titleImageUrl: 'assets/categories/opportunity_title.png',
        patternImageUrl: 'assets/categories/opportunity_pattern.png'),
    Category(
        color: Colors.purple,
        title: 'Wellness',
        documentName: 'Wellness',
        titleImageUrl: 'assets/categories/wellness_title.png',
        patternImageUrl: 'assets/categories/wellness_pattern.png'),
    Category(
        color: Colors.green,
        title: 'Cash Money',
        documentName: 'Cash_Money',
        titleImageUrl: 'assets/categories/cash_money_title.png',
        patternImageUrl: 'assets/categories/cash_money_pattern.png'),
    Category(
        color: Colors.orange,
        title: 'Humanitarian',
        documentName: 'Community_Service',
        titleImageUrl: 'assets/categories/humanitarian_title.png',
        patternImageUrl: 'assets/categories/humanitarian_pattern.png'),
    Category(
        color: Colors.yellow,
        title: 'Academics',
        documentName: 'Academics',
        titleImageUrl: 'assets/categories/academics_title.png',
        patternImageUrl: 'assets/categories/academics_pattern.png'),
  ];

  @override
  final Either<ValueFailure<Category>, Category> value;

  factory Categories(Category input) {
    assert(input != null);

    return Categories._(
      right(makeColorOpaque(input)),
    );
  }

  const Categories._(this.value);
}
