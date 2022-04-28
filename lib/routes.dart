import 'package:flutter_multi_app/unitConverter.dart';
import 'bmical.dart';
import 'calculator.dart';
import 'HomeIntro.dart';
var appRoutes ={
  '/':(context) =>HomeScreenIntro(),
  // '/cal2':(context) =>Home(),
  '/cal':(context) =>Calcualtor2(),
  '/bmi':(context)=> Bmi(),
  '/unit':(context)=> UnitConvert(),
};