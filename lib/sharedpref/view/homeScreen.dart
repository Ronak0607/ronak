import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utils/sharedPref.dart';
import '../provider/homeProvider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  TextEditingController txtname = TextEditingController();

  Homeprovider? homeprovidertrue;
  Homeprovider? homeproviderfalse;


  @override

  void initState() {
    super.initState();

    Provider.of<Homeprovider>(context,listen: false).get();
  }

  Widget build(BuildContext context) {

    homeprovidertrue = Provider.of<Homeprovider>(context,listen: true);
    homeproviderfalse = Provider.of<Homeprovider>(context,listen: false);

    return SafeArea(child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: txtname,
          ),
          ElevatedButton(onPressed: (){
            setSHR(txtname.text);
          }, child: Text("Submit")),

          Text("${homeprovidertrue!.value}"),
        ],
      ),
    ));
  }
}