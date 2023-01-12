import 'package:flutter/material.dart';

import '../maps/print_shops.dart';
import 'drawer.dart';
import 'help.dart';
import 'instructions.dart';

class PrintShopsPage extends StatelessWidget {
  //final String data;
  const PrintShopsPage({
    Key? key,
    //required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: buildDrawer(context, PrintShops.route),
          appBar: AppBar(
            title: const Center(child: Text('UEM - Main Campus\nPrint Shops')),
            //centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Places', icon: Icon(Icons.location_city)),
                Tab(text: 'Help', icon: Icon(Icons.help_center)),
                Tab(text: 'Contact Us', icon: Icon(Icons.message))
              ],
            ),
          ),
          body: const TabBarView(children: [
            PrintShops(),
            Instructions(),
            Help(),
          ]),
        ),
      );
}
