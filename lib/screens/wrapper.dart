import 'package:brew_crew/authenticate/authenticate.dart';
import 'package:brew_crew/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:brew_crew/model/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Person>(context);
    //print(user);
    //return home or authenticate widget
    //return Authenticate();
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
