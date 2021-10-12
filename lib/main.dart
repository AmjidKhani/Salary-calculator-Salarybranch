import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:salary_calculator/Animation/PageRouteBuilder.dart';
import 'package:salary_calculator/Screens/TotalDaysMethod/Total_Days_Method.dart';
import 'package:salary_calculator/Screens/WorkingDaysMethod/WorkingDaysMethod_Result.dart';
import 'package:salary_calculator/Screens/WorkingDaysMethod/Working_Days_Method.dart';
import 'package:salary_calculator/Screens/calculation_method.dart';
import 'package:salary_calculator/Screens/DailyWageMethod/Daily_Wage_Method.dart';
import 'package:path/path.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Salary Calculator",
      debugShowCheckedModeBanner: false,
      home: TotalDays(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          this.context, BouncyPageRoute(methods()),
      );}
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [0.2, 0.4, 0.6, 0.8],
    colors: [
      Colors.cyan[700],
      Colors.cyan[500],
      Colors.cyan[600],
      Colors.cyan[800],
       ],
       ),
        ),
      child: Scaffold(
        backgroundColor: Color(0x00000000),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Lottie.asset("assets/splash.json")),
              SizedBox(
                height: 20,
              ),
              Text(
                "Salary Calculator",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
