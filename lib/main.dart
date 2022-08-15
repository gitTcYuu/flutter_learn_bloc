import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/blocs/counter_a/counter_a_bloc.dart';
import 'package:flutter_learn_bloc/blocs/counter_b/counter_b_bloc.dart';
import 'package:flutter_learn_bloc/pages/home.dart';
import 'package:flutter_learn_bloc/pages/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterA = BlocProvider(create: ((context) => CounterABloc()));
    final counterB = BlocProvider(create: ((context) => CounterBBloc()));

    return MultiBlocProvider(
      providers: [
        counterA,
        counterB,
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter BLoC',
        routes: AppRoute().getRouteAll,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'HomePage'),
      ),
    );
  }
}
