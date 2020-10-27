import 'package:MyApp/chatrooms.dart';
import 'package:MyApp/database.dart';
import 'package:MyApp/authentication_service.dart';
import 'package:MyApp/mechanic.dart';
import 'package:MyApp/sellerlist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  DatabaseService databaseMethods = new DatabaseService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Mechanic>>.value(
      value: DatabaseService().sellerUsers,
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text('Nearby Mechanics'),
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        body: SellerList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ChatRoom()));
          },
          child: Icon(Icons.message),
          backgroundColor: Colors.blue[400],
        ),
      ),
    );
  }
}
