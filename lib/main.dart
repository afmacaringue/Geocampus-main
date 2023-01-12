import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocampus/home.dart';
import 'package:geocampus/maps/buildings.dart';
import 'package:geocampus/maps/libraries.dart';
import 'package:geocampus/maps/parking_sites.dart';
import 'package:geocampus/maps/print_shops.dart';
import 'package:geocampus/maps/restaurants_and_canteens.dart';
import 'package:geocampus/screens/buildings_page.dart';
import 'package:geocampus/screens/initial_map.dart';
import 'package:geocampus/screens/libraries_page.dart';
import 'package:geocampus/screens/parking_sites_page.dart';
import 'package:geocampus/screens/print_shops_page.dart';
import 'package:geocampus/screens/restaurants_and_canteens_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geo Campus',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
      routes: <String, WidgetBuilder>{
        InitialMap.route: (context) => const InitialMap(),
        Buildings.route: (context) => const BuildingsPage(),
        PrintShops.route: (context) => const PrintShopsPage(),
        Libraries.route: (context) => const LibrariesPage(),
        RestaurantsAndCanteens.route: (context) =>
            const RestaurantsAndCanteensPage(),
        ParkingSites.route: (context) => const ParkingSitesPage()
      },
    );
  }
}
