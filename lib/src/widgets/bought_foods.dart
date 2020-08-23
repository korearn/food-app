import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget{
  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();

}

class _BoughtFoodsState extends State<BoughtFoods>{
  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 370.0,
            child: Image.asset("assets/images/coffee.jpg", fit: BoxFit.cover,),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 60.0,
              width: 370.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black, Colors.black12
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Coffee",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 249, 196, 1.0),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        SizedBox(width: 20.0,),
                        Text(
                          "(22.0 Reviews)",
                          style: TextStyle(
                            color: Colors.grey,

                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "22.0",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      "Min Order",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}