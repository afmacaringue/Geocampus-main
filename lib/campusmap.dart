import 'package:flutter/material.dart';
import 'package:geocampus/screens/search.dart';
import 'package:latlong2/latlong.dart';
import 'screens/initial_map.dart';
import 'screens/instructions.dart';
import 'screens/help.dart';
import 'screens/drawer.dart';

class CampusMap extends StatelessWidget {
  final String data;
  const CampusMap({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: buildDrawer(context, InitialMap.route),
          appBar: AppBar(
            title: const Text('UEM - Main Campus Map'),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate('', [], LatLng(0, 0)),
                    );
                  },
                  icon: const Icon(Icons.search))
            ],
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Places', icon: Icon(Icons.location_city)),
                Tab(text: 'Help', icon: Icon(Icons.help_center)),
                Tab(text: 'Contact Us', icon: Icon(Icons.message))
              ],
            ),
          ),
          body: const TabBarView(children: [
            InitialMap(),
            Instructions(),
            Help(),
          ]),
        ),
      );
}
