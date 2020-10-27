import 'package:MyApp/mechanic.dart';
import 'package:MyApp/sellertile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SellerList extends StatefulWidget {
  @override
  _SellerListState createState() => _SellerListState();
}

class _SellerListState extends State<SellerList> {
  @override
  Widget build(BuildContext context) {
    final mechanics = Provider.of<List<Mechanic>>(context) ?? [];
    return ListView.builder(
      itemCount: mechanics.length,
      itemBuilder: (context, index) {
        return MechTile(mechanic: mechanics[index]);
      },
    );
  }
}
