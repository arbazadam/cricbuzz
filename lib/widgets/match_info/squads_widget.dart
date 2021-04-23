import 'package:cricbuzz/screens/squads/squads_screen.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class SquadsInfoWidget extends StatefulWidget {
  final homeTeam;
  final awayTeam;
  SquadsInfoWidget({this.homeTeam, this.awayTeam});
  @override
  _SquadsInfoWidgetState createState() => _SquadsInfoWidgetState();
}

class _SquadsInfoWidgetState extends State<SquadsInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 15.0, bottom: 10),
          child: Text(
            getUpperCaseString('squads'),
          ),
        ),
        Container(
          color: Colors.white,
          height: 120,
          child: ListView.separated(
            itemCount: 2,
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                final id=index==0?widget.homeTeam.id:widget.awayTeam.id;
                Navigator.of(context).pushNamed(SquadsScreen.routeName,arguments: id);
              },
              title: index == 0
                  ? Text(widget.homeTeam.name)
                  : Text(widget.awayTeam.name),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.black54,
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              height: 1,
            ),
          ),
        )
      ],
    );
  }
}
