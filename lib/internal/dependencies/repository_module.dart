
import 'package:flurates/data/repository/rate_data_repository.dart';
import 'package:flurates/domain/repository/rate_repository.dart';

import 'api_module.dart';

class RepositoryModule {
  static RateRepository _rateRepository;

  static RateRepository rateRepository() {
    if (_rateRepository == null) {
      _rateRepository = RateDataRepository(
        ApiModule.apiUtil(),
      );
    }
    return _rateRepository;
  }
}