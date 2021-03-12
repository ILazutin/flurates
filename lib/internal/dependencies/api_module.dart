
import 'package:flurates/data/api/api.dart';

class ApiModule {
  static Api _apiUtil;

  static Api apiUtil() {
    if (_apiUtil == null) {
      _apiUtil = Api();
    }
    return _apiUtil;
  }
}