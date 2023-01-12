import 'package:flutter/material.dart';

import '../maps/parking_sites.dart';
import 'drawer.dart';
import 'help.dart';
import 'instructions.dart';

class ParkingSitesPage extends StatelessWidget {
  //final String data;
  const ParkingSitesPage({
    Key? key,
    //required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: buildDrawer(context, ParkingSites.route),
          appBar: AppBar(
            title: const Text('UEM - Main Campus\nParking Sites'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Places', icon: Icon(Icons.location_city)),
                Tab(text: 'Help', icon: Icon(Icons.help_center)),
                Tab(text: 'Contact Us', icon: Icon(Icons.message))
              ],
            ),
          ),
          body: const TabBarView(children: [
            ParkingSites(),
            Instructions(),
            Help(),
          ]),
        ),
      );
}
