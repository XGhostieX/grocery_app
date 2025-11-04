import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'user_repo.dart';

class UserRepoImpl implements UserRepo {}

final userRepoProvider = Provider((ref) => UserRepoImpl());
