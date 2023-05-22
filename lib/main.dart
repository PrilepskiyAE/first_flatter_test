import 'package:first_flatter_test/screens/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'DI/module.dart';
import 'domain/AppRepository.dart';
GetIt getIt = GetIt.I;
var myAppModel = getIt.get<AppModel>();
void main() {
  setup();
  runApp(

      MyApp());
}

class MyApp extends StatelessWidget {
  var myAppModel = getIt.get<AppModel>();


  @override
  Widget build(BuildContext context) {
  var w=  myAppModel.work();
    return MaterialApp(

      home: LayoutScreen()
    );
  }
}



