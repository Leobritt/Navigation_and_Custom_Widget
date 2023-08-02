import 'package:flutter/material.dart';
import 'package:flutter_application_routes_nav/page_one.dart';
import 'package:flutter_application_routes_nav/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const PageOne(),
        '/twoPage': (context) => const PageTwo(),
      },
    );
  }
}
