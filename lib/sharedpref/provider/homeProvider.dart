import 'package:flutter/material.dart';

import '../../utils/sharedPref.dart';

class Homeprovider extends ChangeNotifier
{
  String? value;

  void get()async
  {
    value = await getSHR();
    notifyListeners();
  }
}