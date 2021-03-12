
import 'package:flurates/data/api/rate_dto.dart';
import 'package:flurates/domain/model/rate.dart';

class RateMapper {

  static Rate fromDto(RateDto rate) {
    return Rate(
      code: rate.code,
      name: rate.name,
      date: rate.date,
      value: rate.value,
      previous: rate.previous
    );
  }
}