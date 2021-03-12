import 'package:flurates/domain/bloc/blocs.dart';
import 'package:flurates/presentation/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flurates/presentation/widgets/rates_list.dart';
import 'package:flurates/presentation/widgets/header_image.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage({this.title});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: BlocBuilder<RateBloc, RateState>(
        builder: (context, state) {
          Widget body;

          if (state is RateLoaded) {
            body = RatesListWidget(rates: state.rates);
          } else {
            body = Padding(
              padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
              child: CircularProgressIndicator(),
            );
          }

          return RefreshIndicator(
              child: Stack(
                children: <Widget>[
                  HeaderImage(
                    height: MediaQuery.of(context).size.height,
                    child: Stack(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${state.date.day} ${MONTHS[state.date.month]}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 120,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: body,
                  ),
                ],
              ),
              onRefresh: () async {
                BlocProvider.of<RateBloc>(context).add(RatesLoad());
              },
          );
        },
      ),
    );
  }

}