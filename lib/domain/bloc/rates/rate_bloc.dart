import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flurates/domain/model/rate.dart';
import 'package:flurates/domain/repository/rate_repository.dart';

part 'rate_event.dart';
part 'rate_state.dart';

class RateBloc extends Bloc<RateEvent, RateState> {
  final RateRepository repository;

  RateBloc(this.repository) : super(RateInitial());

  @override
  Stream<RateState> mapEventToState(
    RateEvent event,
  ) async* {
    if (event is RatesLoad) {
      yield RateLoading();

      var rates = await repository.getRates();
      yield RateLoaded(rates);
    }
  }
}
