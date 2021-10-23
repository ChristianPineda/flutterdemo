import 'package:flutter/material.dart';
import 'package:hello/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Remaster',
      theme: Theme.dark(),
      home: const HomePage(title: 'Flutter Demo Dark Theme'),
    );
  }
}

class Theme {
  static dark() {
    return ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.blueGrey),
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          secondary: Colors.deepPurple,
          brightness: Brightness.dark,
        ));
  }

  static light() {
    return ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.blueGrey),
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white,
          secondary: Colors.blueGrey,
          brightness: Brightness.light,
        ));
  }
}
