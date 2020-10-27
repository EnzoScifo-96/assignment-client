import 'package:MyApp/database.dart';
import 'package:MyApp/loading.dart';
import 'package:MyApp/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  @override
  Widget build(BuildContext context) {
    Users user = Provider.of<Users>(context);

    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user.uid).userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            UserData userData = snapshot.data;
            return Column(
              children: <Widget>[
                Text(
                  'Update your brew settings.',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 20.0),
                Text(userData.userName),
                SizedBox(height: 20.0),
                Text(userData.services),
                SizedBox(height: 20.0),
                Text(userData.area)
              ],
            );
          } else {
            return Loading();
          }
        });
  }
}
