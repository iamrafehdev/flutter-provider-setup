import 'package:flutter/material.dart';
import 'package:flutter_provider_app/modules/counter/controllers/counter_controller.dart';
import 'package:flutter_provider_app/modules/counter/views/counter_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CounterController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterScreen(),
      ),
    );
  }
}
