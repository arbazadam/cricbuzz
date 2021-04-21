import 'package:cricbuzz/apis/cricket-api.dart';
import 'package:cricbuzz/providers/internet_provider.dart';
import 'package:cricbuzz/widgets/match-widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'match-screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var futureData;
  var queryParams = {
    "completedlimit": "5",
    "inprogresslimit": "5",
    "upcomingLimit": "5"
  };
  void initState() {
    super.initState();
    futureData = CricketApi.getData(endPoint: 'matches.php', data: queryParams);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.forward),
              onPressed: () {
                Navigator.of(context).pushNamed(MyScreen.routeName);
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Feature Matches'),
            Expanded(
              child: FutureBuilder(
                  future: futureData,
                  builder: (ctx, snapshotData) {
                    print('${snapshotData.error}  ${snapshotData.error}');
                    if (snapshotData.hasData &&
                        snapshotData.connectionState == ConnectionState.done) {
                      return Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return MatchDetailsWidget(
                            matchModel: snapshotData.data[index],
                          );
                        },
                        itemCount: snapshotData.data.length,
                        viewportFraction: 0.8,
                        loop: false,
                      );
                    }

                    return Center(child: CircularProgressIndicator());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
