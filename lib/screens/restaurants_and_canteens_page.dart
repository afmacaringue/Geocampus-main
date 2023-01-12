import 'package:flutter/material.dart';

import '../maps/restaurants_and_canteens.dart';
import 'drawer.dart';
import 'help.dart';
import 'instructions.dart';

class RestaurantsAndCanteensPage extends StatelessWidget {
  //final String data;
  const RestaurantsAndCanteensPage({
    Key? key,
    //required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: buildDrawer(context, RestaurantsAndCanteens.route),
          appBar: AppBar(
            title: const Text('UEM - Main Campus\nRestaurants and Canteens'),
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
            RestaurantsAndCanteens(),
            Instructions(),
            Help(),
          ]),
        ),
      );
}
