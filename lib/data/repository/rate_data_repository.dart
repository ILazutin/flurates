
import 'package:flurates/data/api/api.dart';
import 'package:flurates/data/api/rate_mapper.dart';
import 'package:flurates/domain/model/rate.dart';
import 'package:flurates/domain/repository/rate_repository.dart';

class RateDataRepository extends RateRepository{

  final Api _apiUtil;

  RateDataRepository(this._apiUtil);

  @override
  Future<List<Rate>> getRates() async {

    return (await _apiUtil.getRates())
        .map((rate) => RateMapper.fromDto(rate)).toList();

  }

}