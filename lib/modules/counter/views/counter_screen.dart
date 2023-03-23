import 'package:flutter/material.dart';
import 'package:flutter_provider_app/modules/counter/controllers/counter_controller.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterController>(builder: (context, counterConsumer, child) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${counterConsumer.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: counterConsumer.incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
    });
  }

  _init() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final counterController = Provider.of<CounterController>(context, listen: false);
      counterController.functionCall();
    });
  }
}
