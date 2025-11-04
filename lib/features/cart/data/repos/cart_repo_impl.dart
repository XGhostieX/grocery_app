import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cart_repo.dart';

class CartRepoImpl implements CartRepo {}

final cartRepoProvider = Provider((ref) => CartRepoImpl());
