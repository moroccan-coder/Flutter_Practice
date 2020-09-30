import 'package:flutter/material.dart';
import 'package:flutter_first_app/routes/Home.dart';
import 'package:flutter_first_app/routes/seond.dart';

Map<String, WidgetBuilder> routes = {
  '/': (context) => Home(),
  '/second': (context) => Second(),
};
