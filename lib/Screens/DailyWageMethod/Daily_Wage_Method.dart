import 'dart:ui';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salary_calculator/Animation/PageRouteBuilder.dart';
import 'package:salary_calculator/Screens/DailyWageMethod/DailyWageMethod_Result.dart';

class DailyWage extends StatefulWidget {
  @override
  _DailyWageState createState() => _DailyWageState();
}

class _DailyWageState extends State<DailyWage> {
  final NDWController = TextEditingController();
  final PDController = TextEditingController();
  final ResController = TextEditingController();
  final databaseRef = FirebaseDatabase.instance.reference();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    NDWController.dispose();
    PDController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salary Calculator"),
        elevation: 0.0,
      ),
      body: Column(
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
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Daily Wage Method",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 14, right: 14, top: 8),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: NDWController,
                      onChanged: (value) {
                        _calculate();

                      },
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        contentPadding: EdgeInsets.all(14.0),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Net Daily Wage",
                        hintText: "Enter net daily wage e.g PKR 5000",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.amber,
                            )),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 14, right: 14, top: 8),
                  child: Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: PDController,
                      onChanged: (value) {
                        _calculate();
                        },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(14.0),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Present Days",
                        labelStyle: TextStyle(),
                        hintText: "Enter present days e.g 25",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.amber,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                  const EdgeInsets.only(top: 24.0, left: 16, right: 16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(

                        child: Text(
                          "Calculate",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          _calculate();
                          if(NDWController.text.isNotEmpty&& PDController.text.isNotEmpty&&ResController.text.isNotEmpty) {
                            insertData(NDWController.text, PDController.text,
                                ResController.text);
                          }

                          if (NDWController.text
                              .trim()
                              .isEmpty &&
                              PDController.text
                                  .trim()
                                  .isEmpty) {
                            Widget okButton = TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"));
                            AlertDialog alertDialog = AlertDialog(
                              content: Text(
                                  "Please Enter Net wage and present days"),
                              actions: [
                                okButton,
                              ],
                            );
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alertDialog;
                              },
                            );
                          }

                          else if (NDWController.text
                              .trim()
                              .isEmpty &&
                              PDController.text
                                  .trim()
                                  .isNotEmpty) {
                            Widget okButton = TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"));
                            AlertDialog alertDialog = AlertDialog(
                              content: Text("Please Enter Net wage"),
                              actions: [
                                okButton,
                              ],
                            );
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alertDialog;
                              },
                            );
                          }

                          else if (NDWController.text
                              .trim()
                              .isNotEmpty &&
                              PDController.text
                                  .trim()
                                  .isEmpty) {
                            Widget okButton = TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"));
                            AlertDialog alertDialog = AlertDialog(
                              content: Text("Please Enter present days"),
                              actions: [
                                okButton,
                              ],
                            );
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alertDialog;
                              },
                            );
                          }

                          else {
                            _calculate();


                            Navigator.push(
                              context,
                              BouncyPageRoute(DailyWageResult(
                                value1: NDWController.text,
                                value2: PDController.text,
                                result: ResController.text,
                              )),
                            );
                            NDWController.clear();
                            PDController.clear();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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

  _calculate() {
    final firstValue = int.parse(NDWController.text);
    final secondValue = int.parse(PDController.text);
    ResController.text = (firstValue * secondValue).toString();
  }

  insertData(String Net_Sallary, String Predent_Days, String ResController) {
    String key=databaseRef.child("Another DailyWage Recorde").child("list_Of Recorde").push().key;
    databaseRef.child("Daily_Weges Methode").child("list_Of Recorde").child(key).set({
     'id':key,
      "Net_Sallary": Net_Sallary,
      "Predent_Days": Predent_Days,
      "Gross Sallary": ResController,
    });
  }
}