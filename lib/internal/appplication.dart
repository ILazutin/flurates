import 'package:flurates/domain/bloc/blocs.dart';
import 'package:flurates/internal/dependencies/repository_module.dart';
import 'package:flutter/material.dart';
import 'package:flurates/presentation/home/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Rates app',
      theme: ThemeData(
        backgroundColor: Color(0xff1d2237),
        primaryColor: Color(0xff23cc9c),
        accentColor: Color(0xfff26560),
      ),
      home: BlocProvider(
        create: (context) => RateBloc(RepositoryModule.rateRepository())..add(RatesLoad()),
      child: HomePage(title: 'Rates app'))
    );
  }
}
