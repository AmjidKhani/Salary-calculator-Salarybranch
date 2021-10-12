
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salary_calculator/Animation/PageRouteBuilder.dart';
import 'package:salary_calculator/Screens/WorkingDaysMethod/WorkingDaysMethod_Result.dart';

class WorkingDays extends StatefulWidget {
  @override
  _WorkingDaysState createState() => _WorkingDaysState();
}

class _WorkingDaysState extends State<WorkingDays> {
  String value;
  final NSController = TextEditingController();
  final PDController = TextEditingController();
  final PLController = TextEditingController();
  final WDController = TextEditingController();
  final ResController = TextEditingController();
  final perdayController = TextEditingController();
  bool isValid = false;
  // bool Nsvalidate;
  // bool PDvalidate;
  // bool PLvalidate;
  // bool WDvalidate;

  //@override
  // void initState(){
  //   super.initState();
  //    Nsvalidate=false;
  //    PDvalidate=false;
  //    PLvalidate=false;
  //    WDvalidate=false;
  // }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    NSController.dispose();
    PDController.dispose();
    PLController.dispose();
    WDController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  "Working Days Method",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    padding: EdgeInsets.only(left: 14, right: 14, top: 8),
                    child: TextField(
                      controller: NSController,
                      onChanged: (value) {
                        //_calculate();
                        value=value;
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        contentPadding: EdgeInsets.all(14.0),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Net Salary",
                        hintText: "Enter net Salary e.g PKR 5000",
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
                  child: TextField(
                    controller: PDController,
                    onChanged: (value) {
                      //_calculate();
                      value=value;
                    },
                    keyboardType: TextInputType.number,
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
                Container(
                  padding: EdgeInsets.only(left: 14, right: 14, top: 8),
                  child: TextField(
                    controller: PLController,
                    onChanged: (value) {
                      // _calculate();
                      value=value;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(14.0),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Paid Leave",
                      labelStyle: TextStyle(),
                      hintText: "Enter paid leave e.g 2 ",
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
                Container(
                  padding: EdgeInsets.only(left: 14, right: 14, top: 8),
                  child: TextField(
                    controller: WDController,
                    onSubmitted: (value) {
                      //_calculate();
                      value=value;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(14.0),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Working Days",
                      labelStyle: TextStyle(),
                      hintText: "Enter Working days e.g 25",
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
                Container(
                  padding: EdgeInsets.only(left: 14, right: 14, top: 8),
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
                          if (NSController.text
                              .trim()
                              .isEmpty &&
                              PDController.text
                                  .trim()
                                  .isEmpty &&
                              PLController.text
                                  .trim()
                                  .isEmpty &&
                              WDController.text
                                  .trim()
                                  .isEmpty) {
                            Widget okButton = TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"));
                            AlertDialog alertDialog = AlertDialog(
                              content: Text(
                                  "Please Enter Data"),
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
                          } else if (NSController.text
                              .trim()
                              .isEmpty) {
                            Widget okButton = TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"));
                            AlertDialog alertDialog = AlertDialog(
                              content: Text("Please Enter Remining Data"),
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
                          else if (
                          PDController.text
                              .trim()
                              .isEmpty) {
                            Widget okButton = TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"));
                            AlertDialog alertDialog = AlertDialog(
                              content: Text("Please Enter Remining Data"),
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
                          else if (
                          PLController.text
                              .trim()
                              .isEmpty
                          ) {
                            Widget okButton = TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"));
                            AlertDialog alertDialog = AlertDialog(
                              content: Text("Please Enter Remining Data"),
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
                          else if (WDController.text
                              .trim()
                              .isEmpty) {
                            {
                              Widget okButton = TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("OK"));
                              AlertDialog alertDialog = AlertDialog(
                                content: Text("Please Enter Remining Data"),
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
                          }
                          else {
                            _calculate();
                           isValid == false ? showSnackBar() : Navigator.push(
                                context,
                                BouncyPageRoute(WorkingDaysResult(
                                  value1: NSController.text,
                                  value2: PDController.text,
                                  value3: PLController.text,
                                  value4: WDController.text,
                                  result: ResController.text,
                                  PaidLeavePay: perdayController.text,

                                )
                                )
                            );
                          }
                          PDController.clear();
                          NSController.clear();
                          PLController.clear();
                          WDController.clear();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                          )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showSnackBar() {
    final snackBar = SnackBar(content: Text('Invalid number of days'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
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

 bool _calculate() {
    final netSalary = int.parse(NSController.text);
    final presentDays = int.parse(PDController.text);
    final paidLeave = int.parse(PLController.text);
    final workingDays = int.parse(WDController.text);

    if((presentDays + paidLeave) <= 30) {
      perdayController.text=(netSalary~/workingDays).toString();
      ResController.text = (netSalary * (presentDays + paidLeave) ~/ workingDays).toString();
      isValid = true;
      return isValid;
    } else {
      print('invalid data');
      return isValid;
    }

 }
  }
