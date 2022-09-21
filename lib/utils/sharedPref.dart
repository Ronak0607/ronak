import 'package:shared_preferences/shared_preferences.dart';

void setSHR(String data) async
{
  SharedPreferences shr =await SharedPreferences.getInstance();
  shr.setString("name", data);
}

Future<String?> getSHR()async{
  SharedPreferences shr =await SharedPreferences.getInstance();
  String? data = shr.getString("name");
  return data;
}