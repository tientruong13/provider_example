import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_2/provider/carts_provider.dart';
import 'package:provider_2/provider/counter_provider.dart';
import 'package:provider_2/screens/screen_page.dart';
import 'package:provider_2/screens/second_screen_page.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCarts()),

    ], child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenPage(),
        '/second': (context) => SecondScreen()
      },
    );
  }
}
