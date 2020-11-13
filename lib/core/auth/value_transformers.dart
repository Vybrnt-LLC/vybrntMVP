import 'package:vybrnt_mvp/core/shared/category.dart';

Category makeColorOpaque(Category category) {
  return Category(color: category.color.withOpacity(1));
}
