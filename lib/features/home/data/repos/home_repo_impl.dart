import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {}

final homeRepoProvider = Provider((ref) => HomeRepoImpl());
