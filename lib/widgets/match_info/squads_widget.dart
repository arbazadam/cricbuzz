import 'package:cricbuzz/screens/squads/squads_screen.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class SquadsInfoWidget extends StatefulWidget {
  final teams;
  SquadsInfoWidget({this.teams});
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
          padding: const EdgeInsets.only(left: 12.0, top: 15.0, bottom: 8),
          child: Text(
            getUpperCaseString('squads'),
          ),
        ),
        Container(
          color: Colors.white,
          height: 120,
          child: ListView.separated(
            itemCount: widget.teams.length,
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(SquadsScreen.routeName);
              },
              title: Text(widget.teams[index]),
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
