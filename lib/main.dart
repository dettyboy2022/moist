import 'package:flutter/material.dart';
import 'package:moistwears/controllers/addtocart_provider.dart';
import 'package:moistwears/controllers/counter_provider.dart';
import 'package:moistwears/controllers/mainscreen_provider.dart';
import 'package:moistwears/welcome.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => MainScreenNotifier()),
    ChangeNotifierProvider(create: (context) => CounterNotifier()),
    ChangeNotifierProvider(create: (context) => CartNotifier())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Welcome(),
    );
  }
}
