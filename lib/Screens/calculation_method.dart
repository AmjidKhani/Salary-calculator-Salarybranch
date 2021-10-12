import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:salary_calculator/Animation/PageRouteBuilder.dart';
import 'package:salary_calculator/Screens/DailyWageMethod/Daily_Wage_Method.dart';
import 'package:salary_calculator/Screens/TotalDaysMethod/Total_Days_Method.dart';
import 'package:salary_calculator/Screens/WorkingDaysMethod/Working_Days_Method.dart';
import 'package:salary_calculator/models/cardModel.dart';

import 'DailyWageMethod/Daily_Wage_Method.dart';

class methods extends StatefulWidget {
  @override
  _methodsState createState() => _methodsState();
}

class _methodsState extends State<methods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Salary Calculator"),
          elevation: 0.0,
        ),
        // backgroundColor: Color(0x00000000),
        body:Column(
          children: <Widget>[
          Container(
          height: 170,
          width: 415,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              stops: [0.2, 0.4, 0.6, 0.8],
              colors: [
                Colors.cyan[700],
                Colors.cyan[500],
                Colors.cyan[600],
                Colors.cyan[800],
              ],
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              getImageAsset(),
            ],
          ),
        ),
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 8.0,left: 15,right: 15),
                          child: Text(
                            "Select method of your choice",
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w600,),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Card(
                            color: Colors.amber,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,BouncyPageRoute(DailyWage()),
                                );
                              },
                              child: const SizedBox(
                                width: 200,
                                height: 100,
                                child: Center(
                                    child: Text(
                                  'Daily wedges Method',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Card(
                            color: Colors.black54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    BouncyPageRoute(TotalDays()),
                                );
                              },
                              child: const SizedBox(
                                width: 200,
                                height: 100,
                                child: Center(
                                    child: Text('Total Days Method',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white))),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Card(
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                  BouncyPageRoute(WorkingDays()),
                                );
                              },
                              child: const SizedBox(
                                width: 200,
                                height: 100,
                                child: Center(
                                    child: Text('Working Days Method',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

        ]
        ),
    );
  }
  Widget getImageAsset() {
    AssetImage assetImage = AssetImage("assets/logo.png");
    Image image = Image(
      image: assetImage,
      width: 140.0,
      height: 110.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(top: 20.0, left: 10.0),
    );
  }

}
