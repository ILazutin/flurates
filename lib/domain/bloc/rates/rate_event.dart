part of 'rate_bloc.dart';

abstract class RateEvent extends Equatable {
  const RateEvent();
}

class RatesLoad extends RateEvent {
  @override
  List<Object> get props => [];
}
