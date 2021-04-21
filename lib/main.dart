import 'package:cricbuzz/providers/internet_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/screens.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {MyScreen.routeName: (ctx) => MyScreen()},
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF0F2F5)),
      home: HomeScreen(),
    );
  }
}
