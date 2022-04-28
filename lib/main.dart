import 'package:flutter/material.dart';
import 'package:flutter_multi_app/currencyConverter/currencyConverter.dart';
import 'package:flutter_multi_app/routes.dart';
import 'package:flutter_multi_app/unitConverter.dart';
import 'package:math_expressions/math_expressions.dart';
import 'bmical.dart';
import 'calculator.dart';
import 'currencyConverter/currencyConverter.dart';
import 'HomeIntro.dart';
import 'oldmain.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Home3(),
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      
    );
  }
}
