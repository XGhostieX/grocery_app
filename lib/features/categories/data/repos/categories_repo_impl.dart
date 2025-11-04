import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'categories_repo.dart';

class CategoriesRepoImpl implements CategoriesRepo {}

final categoriesRepoProvider = Provider((ref) => CategoriesRepoImpl());
