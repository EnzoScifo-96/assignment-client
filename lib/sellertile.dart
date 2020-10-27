import 'package:MyApp/mechanic.dart';
import 'package:MyApp/settings_form.dart';
import 'package:flutter/material.dart';

class MechTile extends StatelessWidget {
  final Mechanic mechanic;
  MechTile({this.mechanic});

  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: SettingsForm(),
            );
          });
    }

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          onTap: () => _showSettingsPanel(),
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown[200],
          ),
          title: Text(mechanic.userName),
          subtitle: Text(mechanic.services),
        ),
      ),
    );
  }
}
