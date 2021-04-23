import 'package:cricbuzz/apis/cricket-api.dart';
import 'package:cricbuzz/widgets/commentary/commentary_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'match_detail/commentary_screen.dart';

class MyScreen extends StatefulWidget {
  static final routeName = '/match-screen';
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  var futureData;
  var isInit = true;
  var count = 1;
  var val;
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (isInit) {
      print('called $count times');
      val = ModalRoute.of(context).settings.arguments as Map<String, String>;
      futureData = Provider.of<CricketApi>(context,listen:false).getMatchData(endPoint: 'match.php', data: val);
    }
    isInit = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData &&
                snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${snapshot.data.homeTeam.shortName}'),
                      Text('${snapshot.data.venue.name}'),
                      Text('match id ${snapshot.data.id}'),
                      Text('series id ${snapshot.data.series.id}'),
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.network(
                            '${snapshot.data.homeTeam.logoUrl}',
                            fit: BoxFit.contain,
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.network(
                            '${snapshot.data.awayTeam.logoUrl}',
                            fit: BoxFit.contain,
                          )),
                      ElevatedButton(
                          onPressed: () async {
                            
                               // print(commentary);
                            Navigator.of(context).pushNamed(
                                CommentaryScreen.routeName,arguments: val
                                );
                          },
                          child: Text('Commentary'))
                    ]),
              );
            }
            print('else block');
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
