import 'package:flutter/material.dart';
import 'package:salary_calculator/Animation/PageRouteBuilder.dart';
import 'package:salary_calculator/Screens/TotalDaysMethod/TotalDaysMethod_Result.dart';

class TotalDays extends StatefulWidget {
  @override
  _TotalDaysState createState() => _TotalDaysState();
}

class _TotalDaysState extends State<TotalDays> {
  final NSController = TextEditingController();
  final PDController = TextEditingController();
  final PLController = TextEditingController();
  final WOController = TextEditingController();
  final FController = TextEditingController();
  final TDController = TextEditingController();
  final ResController = TextEditingController();
  bool isvalid=false;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    NSController.dispose();
    PDController.dispose();
    PLController.dispose();
    WOController.dispose();
    FController.dispose();
    TDController.dispose();
    super.dispose();
  }

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
                  "Total Days Method",
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
                      controller: NSController,
                      onChanged: (value) {
                        //_calculate();
                        value=value;
                      },
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
                    keyboardType: TextInputType.number,
                    controller: PDController,
                    onChanged: (value) {
                      //_calculate();
                      value=value;
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
                Container(
                  padding: EdgeInsets.only(left: 14, right: 14, top: 8),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: PLController,
                    onChanged: (value) {
                     // _calculate();
                      value=value;
                    },
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
                    keyboardType: TextInputType.number,
                    controller: WOController,
                    onChanged: (value) {
                      //_calculate();
                      value=value;
                    },
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.all(14.0),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Weekly Off",
                      hintText: "Enter your Working off e.g  5",
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
                Container(
                  padding: EdgeInsets.only(left: 14, right: 14, top: 8),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: FController,
                    onChanged: (value) {
                      //_calculate();
                      value=value;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(14.0),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Festivel",
                      labelStyle: TextStyle(),
                      hintText: "Enter Festivel e.g 2",
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
                    keyboardType: TextInputType.number,
                    controller: TDController,
                    onChanged: (value) {
                     // _calculate();
                        value=value;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(14.0),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Total Days",
                      labelStyle: TextStyle(),
                      hintText: "Total Days In Month e.g 29",
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
                        onPressed: () { if (NSController.text
                            .trim()
                            .isEmpty &&
                            PDController.text
                                .trim()
                                .isEmpty &&
                            PLController.text
                                .trim()
                                .isEmpty &&
                            WOController.text
                                .trim()
                                .isEmpty &&
                            FController.text
                                .trim()
                                .isEmpty&&
                            TDController.text
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
                        else if (FController.text
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
                        else if (WOController.text
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
                        else if (TDController.text
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
                          isvalid == false ? showSnackBar() : Navigator.push(
                              context,
                              BouncyPageRoute(TotalDaysResult(
                                value1: NSController.text,
                                value2: PDController.text,
                                value3: PLController.text,
                                value4: WOController.text,
                                value5: FController.text,
                                value6: TDController.text,
                                result: ResController.text,
                              )));

                          PDController.clear();
                          NSController.clear();
                          PLController.clear();
                          WOController.clear();
                          FController.clear();
                          TDController.clear();
                        }
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
    );;
  }

  _calculate() {
    final netSalary = int.parse(NSController.text);
    final presentDays = int.parse(PDController.text);
    final paidLeave = int.parse(PLController.text);
    final weeklyOff = int.parse(WOController.text);
    final festivel = int.parse(FController.text);
    final totalDays = int.parse(TDController.text);

    if((presentDays + paidLeave + weeklyOff + festivel) <= 30) {
    ResController.text =
        (netSalary * ((presentDays + paidLeave+weeklyOff + festivel) / totalDays)).toString();
        isvalid = true;
        return isvalid;
  } else {
      print('invalid data');
      return isvalid;
    }

  }
}
