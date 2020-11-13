import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'package:vybrnt_mvp/core/auth/failures.dart';
import 'package:vybrnt_mvp/core/auth/value_transformers.dart';

import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/core/shared/category.dart';

class HomeCategories extends ValueObject<Category> {
  static List<Category> predefinedColors = [
    Category(
      color: Colors.black,
      title: 'Home',
      documentName: 'Feed',
      titleImageUrl: 'assets/categories/home_title.png',
      patternImageUrl: 'assets/categories/home_pattern.jpg',
      circleImageUrl: 'assets/categories/home_pattern.jpg',
    ),
    Category(
      color: Color(0x80CB3838),
      title: 'Culture',
      documentName: 'Culture_Social',
      titleImageUrl: 'assets/categories/culture_title.png',
      patternImageUrl: 'assets/categories/culture_pattern.png',
      circleImageUrl: 'assets/categories/culture_circle.png',
    ),
    Category(
      color: Colors.blueAccent,
      title: 'Opportunity',
      documentName: 'Opportunity',
      titleImageUrl: 'assets/categories/opportunity_title.png',
      patternImageUrl: 'assets/categories/opportunity_pattern.png',
      circleImageUrl: 'assets/categories/opportunity_circle.png',
    ),
    Category(
      color: Colors.green,
      title: 'Cash Money',
      documentName: 'Cash_Money',
      titleImageUrl: 'assets/categories/cash_money_title.png',
      patternImageUrl: 'assets/categories/cash_money_pattern.png',
      circleImageUrl: 'assets/categories/cash_money_circle.png',
    ),
    Category(
      color: Colors.purple,
      title: 'Wellness',
      documentName: 'Wellness',
      titleImageUrl: 'assets/categories/wellness_title.png',
      patternImageUrl: 'assets/categories/wellness_pattern.png',
      circleImageUrl: 'assets/categories/wellness_circle.png',
    ),
    Category(
      color: Colors.orange,
      title: 'Humanitarian',
      documentName: 'Community_Service',
      titleImageUrl: 'assets/categories/humanitarian_title.png',
      patternImageUrl: 'assets/categories/humanitarian_pattern.png',
      circleImageUrl: 'assets/categories/humanitarian_circle.png',
    ),
    Category(
      color: Colors.yellow,
      title: 'Academics',
      documentName: 'Academics',
      titleImageUrl: 'assets/categories/academics_title.png',
      patternImageUrl: 'assets/categories/academics_pattern.png',
      circleImageUrl: 'assets/categories/academics_circle.png',
    ),
  ];

  @override
  final Either<ValueFailure<Category>, Category> value;

  factory HomeCategories(Category input) {
    assert(input != null);

    return HomeCategories._(
      right(makeColorOpaque(input)),
    );
  }

  const HomeCategories._(this.value);
}
