import 'package:flutter/material.dart';
import 'package:myapp/src/widgets/food_category.dart';
import 'widgets/home_top_info.dart';
import 'widgets/search_field.dart';
import 'widgets/bought_foods.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(000000),
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 20.0,),
          SearchField(),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Frequently Bought Foods",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 249, 196, 1.0)
              ),
              ),
              GestureDetector(
                onTap: (){},
                child: Text("View All",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 249, 196, 1.0)
                ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Container(
            child: BoughtFoods(),
          ),
        ]
      )
    );
  }
}