import 'package:flutter/material.dart';

import '../constants.dart';

class FooterContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
          child: Container(
        decoration: BoxDecoration(color:Colors.grey[350]),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('POINTS TABLE',style: footerTextStyle,),
            SizedBox(width: 20,),
            Text('SCHEDULE',style: footerTextStyle,),
          ],
        ),
      ),
    );
  }
}
