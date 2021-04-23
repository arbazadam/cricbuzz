import 'package:cricbuzz/apis/cricket-api.dart';
import 'package:cricbuzz/screens/match_detail/commentary_screen.dart';
import 'package:cricbuzz/screens/squads/squads_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/screens.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CricketApi(),
      child: MaterialApp(
        routes: {
          MyScreen.routeName: (ctx) => MyScreen(),
          CommentaryScreen.routeName: (ctx) => CommentaryScreen(),
          SquadsScreen.routeName: (ctx) => SquadsScreen()
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF0F2F5)),
        home: HomeScreen(),
      ),
    );
  }
}