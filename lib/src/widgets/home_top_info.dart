import 'package:flutter/material.dart';

/*font color
fromRGBO(255, 249, 196, 1.0)
*/

class HomeTopInfo extends StatelessWidget{

  final textStyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("¿Qué quieres comer?", style: textStyle),
                  //Text("Si", style: textStyle)
                ]
            ),
            Icon(Icons.notifications_none, size: 30.0, color: Theme.of(context).primaryColor,),
          ]
      ),
    );
  }
}