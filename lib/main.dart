import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharedpref/sharedpref/provider/homeProvider.dart';
import 'package:sharedpref/sharedpref/view/homeScreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=> Homeprovider())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => Homescreen()},
    ),
  ));
}
