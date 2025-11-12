import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'details_repo.dart';

class DetailsRepoImpl implements DetailsRepo {}

final detailsRepoProvider = Provider((ref) => DetailsRepoImpl());
