import 'package:MyApp/Homepage.dart';
import 'package:MyApp/home.dart';
import 'package:MyApp/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users>(context);
    print(user);

    if (user == null) {
      return Homepage();
    } else {
      return Home();
    }
  }
}
