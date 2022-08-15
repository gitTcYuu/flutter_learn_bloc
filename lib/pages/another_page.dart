import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/blocs/counter_a/counter_a_bloc.dart';
import 'package:flutter_learn_bloc/blocs/counter_b/counter_b_bloc.dart';


class AnotherPage extends StatefulWidget {
  const AnotherPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.chevron_left)),
      ),
      body: BlocBuilder<CounterABloc, CounterAState>(
          builder: (context, counterAState) {
        return BlocBuilder<CounterBBloc, CounterBState>(
            builder: (context, counterBState) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Counter A :',
                    ),
                    Text(
                      '${counterAState.count}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Counter B :',
                    ),
                    Text(
                      '${counterBState.count}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ],
            ),
          );
        });
      }),
      floatingActionButton: Row(
        children: [
          //Counter A
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.amber,
                  onPressed: () =>
                      context.read<CounterABloc>().add(CounterAEventReset()),
                  tooltip: 'Reset',
                  child: const Icon(
                    Icons.restore,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.amber,
                  onPressed: () =>
                      context.read<CounterABloc>().add(CounterAEventAdd()),
                  tooltip: 'Increment',
                  child: const Icon(
                    Icons.add,
                  ),
                ),
              ],
            ),
          ),
          //Counter B
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () =>
                      context.read<CounterBBloc>().add(CounterBEventReset()),
                  tooltip: 'Reset',
                  child: const Icon(Icons.restore),
                ),
                const SizedBox(
                  height: 10,
                ),
                FloatingActionButton(
                  onPressed: () =>
                      context.read<CounterBBloc>().add(CounterBEventAdd()),
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
