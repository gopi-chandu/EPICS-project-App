
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

String s = 'null';
Color? a1 = Colors.orange[300];
Color? a2 = Colors.deepOrange[500];
Color? a3 = Colors.orange[300];
Color? a4 = Colors.deepOrange[500];
Color? c1 = Colors.orange[300];
Color? c2 = Colors.deepOrange[500];
Color? c5 = Colors.orange[300];
Color? c6 = Colors.deepOrange[500];
Color? c3 = Colors.orange[300];
Color? c4 = Colors.deepOrange[500];

bool tap = false;
int g = 1;
double _heightofuser = 171.0;
double _age = 19.0;
double _fat = 0;
double _wtofuser = 55.0;
double bmi = 20;
double? fat;
double q = 10;
var a;
double n = 16.2;
String t = 'Null';
double result = 0;

double result1 = 0;
var f;

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home3(),
    ));

class Home3 extends StatefulWidget {
  @override
  _Home3State createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  void initState() {
    // TODO: implement initState
    super.initState();
    //getfat(_age, g);
    //getbmi(_wtofuser, _heightofuser);
  }

  double getbmi(wt, h) {
    double h1 = h / 100;
    double bmi = wt / (h1 * h1);
    String b = bmi.toStringAsFixed(1);
    bmi = double.parse(b);
    //print(bmi);
    return bmi;
  }

  /*double getfat(age, g) {
    n = 5.4;
    /* if (g == 1) {
      n = 16.2;
    } else {
      n = 5.4;
    }*/
    fat = (1.20 * bmi) + (0.23 * age) - n;
    String ff = fat.toStringAsFixed(1);
    fat = double.parse(ff);
    return fat;
  }*/

  void col() {
    if (result >= 0 && result <= 18.4) {
      t = 'Under Weight';
      c1 = Colors.amber[300];
      c2 = Colors.amber[500];
    } else if (result >= 18.5 && result <= 24.9) {
      t = 'Normal Weight';
      c1 = Colors.green[500];
      c2 = Colors.green[700];
    } else if (result >= 25.0 && result <= 29.9) {
      t = 'Over Weight';
      c1 = Colors.blue[500];
      c2 = Colors.blue[700];
    } else if (result >= 30.0) {
      t = 'Obesity';
      c1 = Colors.red[500];
      c2 = Colors.red[700];
    }
  }

  Color ct = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c4,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              
            ),
            child: Column(
              children: <Widget>[
                //Heading
                Container(
                  //margin: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                  height: 60.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(15.0),
                    //color: Colors.redAccent,
                    
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          spreadRadius: 0.5,
                          blurRadius: 5.0,
                          color: Colors.black12)
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'BMI Calculator',
                      style: TextStyle(
                        color: ct,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),

                //summary
                Container(
                  height: 200.0,
                  margin: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.redAccent,
                    
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          spreadRadius: 0.5,
                          blurRadius: 5.0,
                          color: Colors.black12)
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'BMI : $a',
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    'FAT % : ${f} ',
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Height : $_heightofuser',
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    'Weight : $_wtofuser',
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  n = 16.2;
                                  _fat = ((1.20 * result) + (0.23 * _age) - n);
                                  f = _fat.toStringAsFixed(1);
//                                  a3 = Colors.orange[300];
//                                  a4 = Colors.deepOrange[500];
                                  a3 = c1;
                                  a4 = c2;
                                  a1 = Colors.cyan[300];
                                  a2 = Colors.cyan[500];
                                });
                              },
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'MALE ',
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    SizedBox(height: 10.0),
                                  ],
                                ),
                                margin: EdgeInsets.all(5.0),
                                height: 50.0,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 3),
                                        spreadRadius: 0.5,
                                        blurRadius: 5.0,
                                        color: Colors.black12)
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.redAccent,
                                  
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  n = 5.4;
                                  _fat = ((1.20 * result) + (0.23 * _age) - n);
                                  f = _fat.toStringAsFixed(1);
                                  a1 = c1;
                                  a2 = c2;
                                  a3 = Colors.cyan[300];
                                  a4 = Colors.cyan[500];
                                });
                              },
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'FEMALE',
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.all(5.0),
                                height: 50.0,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 3),
                                        spreadRadius: 0.5,
                                        blurRadius: 5.0,
                                        color: Colors.black12)
                                  ],
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.redAccent,
                                  
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      //newone
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10.0),
                            height: 15.0,
                            width: 15.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.redAccent,
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Colors.cyan, Colors.cyan],
                              ),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 3),
                                    spreadRadius: 0.5,
                                    blurRadius: 5.0,
                                    color: Colors.black12)
                              ],
                            ),
                          ),
                          Text(
                            'Selected',
                            style:
                                TextStyle(letterSpacing: 1.5, fontSize: 15.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.0),

                /*Container(
                  height: 200.0,
                  margin: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.redAccent,
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [c1, c2],
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          spreadRadius: 0.5,
                          blurRadius: 5.0,
                          color: Colors.black12)
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Enter your username'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter a search term'),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5.0),*/
                //age
                Container(
                    margin: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                    height: 100.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.redAccent,
                      
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            spreadRadius: 0.5,
                            blurRadius: 5.0,
                            color: Colors.black12)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Age',
                                  style: TextStyle(fontSize: 15.0),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  '$_age',
                                  style: TextStyle(fontSize: 20.0),
                                )),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(),
                          child: CupertinoSlider(
                            activeColor: Colors.white,
                            //inactiveColor: Colors.white30,
                            min: 10.0,
                            max: 100.0,
                            divisions: 90,
                            value: _age,

                            onChanged: (age) {
                              col();

                              setState(() {
                                _age = age;
                                _fat = ((1.20 * result) + (0.23 * _age) - n);
                                f = _fat.toStringAsFixed(1);
                              });

                              //result1 = getfat(_age, 0);
                              // f = result1.toStringAsFixed(3);
                            },
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 5.0),
                //height
                Container(
                    margin: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                    height: 100.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.redAccent,
                      
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            spreadRadius: 0.5,
                            blurRadius: 5.0,
                            color: Colors.black12)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Height',
                                  style: TextStyle(fontSize: 15.0),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  '$_heightofuser',
                                  style: TextStyle(fontSize: 20.0),
                                )),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(),
                          child: CupertinoSlider(
                            activeColor: Colors.white,
                            //inactiveColor: Colors.white30,
                            min: 80.0,
                            max: 220.0,
                            divisions: 140,
                            value: _heightofuser,
                            onChanged: (height) {
                              col();
                              setState(() {
                                result = getbmi(_wtofuser, _heightofuser);
                                _heightofuser = height;
                                a = result.toStringAsFixed(1);
                                _fat = ((1.20 * result) + (0.23 * _age) - n);
                                f = _fat.toStringAsFixed(1);
                                //print(a);
                                //col();
                              });
                            },
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 5.0),
                //weight
                Container(
                    margin: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                    height: 100.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.redAccent,
                      
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            spreadRadius: 0.5,
                            blurRadius: 5.0,
                            color: Colors.black12)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Weight',
                                  style: TextStyle(fontSize: 15.0),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  '$_wtofuser',
                                  style: TextStyle(fontSize: 20.0),
                                )),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(),
                          child: CupertinoSlider(
                            activeColor: Colors.white,
                            //inactiveColor: Colors.white30,
                            min: 20.0,
                            max: 160.0,
                            divisions: 140,
                            value: _wtofuser,
                            onChanged: (wt) {
                              col();
                              setState(() {
                                result = getbmi(_wtofuser, _heightofuser);
                                _wtofuser = wt;
                                a = result.toStringAsFixed(3);
                                _fat = ((1.20 * result) + (0.23 * _age) - n);
                                f = _fat.toStringAsFixed(1);
                                //print(a);
                              });
                            },
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 15.0),

                //guidelines and next
                Container(
                  margin: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.redAccent,
                    
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          spreadRadius: 0.5,
                          blurRadius: 5.0,
                          color: Colors.black12)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            'BMI Categories:',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        height: 50.0,
                        width: double.infinity,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Underweight = <18.5',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                        height: 25.0,
                        width: double.infinity,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Normal weight = 18.5–24.9',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                        height: 25.0,
                        width: double.infinity,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Overweight = 25–29.9 ',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                        height: 25.0,
                        width: double.infinity,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Obesity = BMI of 30 or greater',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                        height: 25.0,
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                //themes
                Container(
                  margin: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.redAccent,
                    
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          spreadRadius: 0.5,
                          blurRadius: 5.0,
                          color: Colors.black12)
                    ],
                  ),
                  height: 150.0,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        'Themes : Select your choice',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 12.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                c3 = Colors.orange[300];
                                c4 = Colors.deepOrange[500];
                                ct = Colors.black;
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.redAccent,
                                  
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 3),
                                        spreadRadius: 0.5,
                                        blurRadius: 5.0,
                                        color: Colors.black12)
                                  ],
                                ),
                                height: 50.0,
                                width: 50.0),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                c3 = Colors.green[300];
                                c4 = Colors.green[500];
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.redAccent,
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.green,
                                      Colors.green
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 3),
                                        spreadRadius: 0.5,
                                        blurRadius: 5.0,
                                        color: Colors.black12)
                                  ],
                                ),
                                height: 50.0,
                                width: 50.0),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                c3 = Colors.blue[300];
                                c4 = Colors.blue[500];
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.redAccent,
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.blue,
                                      Colors.blue
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 3),
                                        spreadRadius: 0.5,
                                        blurRadius: 5.0,
                                        color: Colors.black12)
                                  ],
                                ),
                                height: 50.0,
                                width: 50.0),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                c3 = Colors.purple;
                                c4 = Colors.deepPurple;
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.redAccent,
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.purple,
                                      Colors.deepPurple
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 3),
                                        spreadRadius: 0.5,
                                        blurRadius: 5.0,
                                        color: Colors.black12)
                                  ],
                                ),
                                height: 50.0,
                                width: 50.0),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                c3 = Colors.red[300];
                                c4 = Colors.red[500];
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.redAccent,
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [Colors.red, Colors.red],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 3),
                                        spreadRadius: 0.5,
                                        blurRadius: 5.0,
                                        color: Colors.black12)
                                  ],
                                ),
                                height: 50.0,
                                width: 50.0),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                c3 = Colors.amber;
                                c4 = Colors.grey[900];
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.redAccent,
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [Colors.amber, Colors.grey],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 3),
                                        spreadRadius: 0.5,
                                        blurRadius: 5.0,
                                        color: Colors.black12)
                                  ],
                                ),
                                height: 50.0,
                                width: 50.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [c4, c3],
                    ),
                  ),
                  height: 400,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 30.0,
                            width: 30.0,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),*/
/*Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'BMI',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      Text(
                        '$a',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                  height: 150.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.redAccent,
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [c1, c2],
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          spreadRadius: 0.5,
                          blurRadius: 5.0,
                          color: Colors.black12)
                    ],
                  ),
                ),*/
//two boxes
/*Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.redAccent,
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.orange[300],
                        Colors.deepOrange[500],
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          spreadRadius: 0.5,
                          blurRadius: 5.0,
                          color: Colors.black12)
                    ],
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Height'),
                  ),
                ),*/
