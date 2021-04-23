import 'package:cricbuzz/apis/cricket-api.dart';

import 'package:cricbuzz/widgets/scores/match-widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

import 'match-screen.dart';

class HomeScreen extends StatelessWidget {
  final queryParams = {
    "completedlimit": "5",
    "inprogresslimit": "5",
    "upcomingLimit": "5"
  };

  @override
  Widget build(BuildContext context) {
    final futureData = Provider.of<CricketApi>(context, listen: false)
        .getData(endPoint: 'matches.php', data: queryParams);
    return Scaffold(
      appBar: AppBar(),
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
