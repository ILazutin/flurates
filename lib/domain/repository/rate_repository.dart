import "package:flurates/domain/model/rate.dart";

abstract class RateRepository {
  Future<List<Rate>> getRates();
}