import 'package:flurates/domain/model/rate.dart';
import 'package:flurates/presentation/widgets/rate_item.dart';
import 'package:flutter/material.dart';

class RatesListWidget extends StatelessWidget {
  final List<Rate> rates;

  RatesListWidget({this.rates});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
        itemCount: rates == null ? 0 : rates.length,
        itemBuilder: (BuildContext context, int index) {
          return RateItem(
            item: rates[index],
          );
        });
  }
}