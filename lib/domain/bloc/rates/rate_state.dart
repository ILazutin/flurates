part of 'rate_bloc.dart';

abstract class RateState extends Equatable {
  final DateTime date = DateTime.now();

  RateState();
}

class RateInitial extends RateState {
  @override
  List<Object> get props => [date];
}

class RateLoading extends RateState {
  @override
  List<Object> get props => [date];
}

class RateLoaded extends RateState {
  final List<Rate> rates;

  RateLoaded(this.rates);

  @override
  List<Object> get props => [rates, date];
}