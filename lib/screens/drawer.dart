import 'package:flutter/material.dart';
import 'package:geocampus/maps/buildings.dart';
import 'package:geocampus/maps/libraries.dart';
import 'package:geocampus/maps/parking_sites.dart';
import 'package:geocampus/maps/restaurants_and_canteens.dart';
import 'package:geocampus/screens/initial_map.dart';

import '../maps/print_shops.dart';

/*class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);*/

Widget buildMenuItem(BuildContext context, Icon icon, Widget title,
    String routeName, String currentRoute) {
  final isSelected = routeName == currentRoute;

  return ListTile(
    leading: icon,
    title: title,
    selected: isSelected,
    onTap: () {
      if (isSelected) {
        Navigator.pop(context);
      } else {
        Navigator.pushReplacementNamed(context, routeName);
      }
    },
  );
}

/*@override*/
Drawer buildDrawer(BuildContext context, String currentRoute) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        const DrawerHeader(
            /*accountName: Text('Antonio Macarringue & Israel Matavele',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
        accountEmail: Text('+258 84 0410143 / +258 84 8509742',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),*/

            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: AssetImage("uem.jpg"), fit: BoxFit.cover)),
            child: Center()),
        /*
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Buildings'),
      ),
      ListTile(
        leading: Icon(Icons.local_parking),
        title: Text('Parking sites'),
      ),
      ListTile(
        leading: Icon(Icons.restaurant),
        title: Text('Restaurants and canteens'),
      ),
      ListTile(
        leading: Icon(Icons.local_print_shop),
        title: Text('Print shops'),
      ),
      ListTile(
        leading: Icon(Icons.book_outlined),
        title: Text('Libraries'),
      )*/
        buildMenuItem(
          context,
          const Icon(Icons.home),
          const Text('Buildings'),
          Buildings.route,
          currentRoute,
        ),
        buildMenuItem(
          context,
          const Icon(Icons.local_parking),
          const Text('Parking sites'),
          ParkingSites.route,
          currentRoute,
        ),
        buildMenuItem(
          context,
          const Icon(Icons.restaurant),
          const Text('Restaurants and canteens'),
          RestaurantsAndCanteens.route,
          currentRoute,
        ),
        buildMenuItem(
          context,
          const Icon(Icons.local_print_shop),
          const Text('Print shops'),
          PrintShops.route,
          currentRoute,
        ),
        buildMenuItem(
          context,
          const Icon(Icons.book_outlined),
          const Text('Libraries'),
          Libraries.route,
          currentRoute,
        ),
        const BackButton(
          color: Colors.green,
        )
      ],
    ),
  );
}
/*}

*/
