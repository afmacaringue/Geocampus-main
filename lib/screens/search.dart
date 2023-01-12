import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocampus/screens/found_poi_map_page.dart';
import 'package:latlong2/latlong.dart';

class CustomSearchDelegate extends SearchDelegate {
  final String poiName;
  final List<Marker> markers;
  final LatLng center;
  CustomSearchDelegate(this.poiName, this.markers, this.center);
  List<String> searchTerms = [
    'CIUEM - ICT center',
    'Mazula Central Library',
    'Print4u copy shop',
    'Faculty of Letters and Social Sciences',
    'Faculty of Sciences',
    'Faculty of Agronomy',
    'Faculty of Economy',
    'Faculty of Education',
    'BCI bank',
    'BIM bank',
    'DMI - Department of Math and Computer Science',
    'Department of Physics',
    'Department of Chemistry',
    'DCB - Department of Biologogical Sciences',
    'Pedagogical Complex',
    'Pedagogical Complex II',
    'Student Center',
    'CIUEM parking site',
    'Department of Physics parking site',
    'Mazula Central Library parking site',
    'African Studies Center',
    'Sino-Mozambique Cultural Center',
    'Academic Registry Center',
    'Mozambique History Archive',
    'Sports Pavillion',
    'Languages Center',
    'University Clinic',
    'Xerox Copy Shop'
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var poi in searchTerms) {
      if (poi.toLowerCase().contains(
            query.toLowerCase(),
          )) {
        matchQuery.add(poi);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var poi in searchTerms) {
      if (poi.toLowerCase().contains(
            query.toLowerCase(),
          )) {
        matchQuery.add(poi);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
            onTap: () {
              //debugPrint(result);
              switch (result) {
                case "CIUEM - ICT center":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.948981, 32.600486),
                              builder: (ctx) => const Icon(Icons.computer),
                            )
                          ],
                          center: LatLng(-25.948981, 32.600486),
                        ),
                      ));
                  break;
                case "Pedagogical Complex II":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.95108, 32.598903),
                              builder: (ctx) => const Icon(Icons.school),
                            )
                          ],
                          center: LatLng(-25.95108, 32.598903),
                        ),
                      ));
                  break;
                case "Pedagogical Complex":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.950409, 32.598646),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.950689, 32.598951),
                              builder: (ctx) => const Icon(Icons.school),
                            )
                          ],
                          center: LatLng(-25.95053, 32.598871),
                        ),
                      ));
                  break;
                case "Mazula Central Library":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.95175, 32.60073),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.95175, 32.60073),
                        ),
                      ));
                  break;
                case "Print4u copy shop":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.949377, 32.59952),
                              builder: (ctx) =>
                                  const Icon(Icons.local_print_shop),
                            ),
                          ],
                          center: LatLng(-25.949377, 32.59952),
                        ),
                      ));
                  break;
                case "Faculty of Letters and Social Sciences":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.95025, 32.6002),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.95025, 32.6002),
                        ),
                      ));
                  break;
                case "Faculty of Sciences":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.94972, 32.5992),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.94972, 32.5992),
                        ),
                      ));
                  break;
                case "Faculty of Agronomy":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.9518, 32.60308),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.9518, 32.60308),
                        ),
                      ));
                  break;
                case "Faculty of Economy":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.9498, 32.6002),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.9498, 32.6002),
                        ),
                      ));
                  break;
                case "Faculty of Education":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.950718, 32.59944),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.950718, 32.59944),
                        ),
                      ));
                  break;
                case "BCI bank":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.950747, 32.59989),
                              builder: (ctx) => const Icon(Icons.money),
                            ),
                          ],
                          center: LatLng(-25.950747, 32.59989),
                        ),
                      ));
                  break;
                case "BIM bank":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.950284, 32.60209),
                              builder: (ctx) => const Icon(Icons.money),
                            ),
                          ],
                          center: LatLng(-25.950284, 32.60209),
                        ),
                      ));
                  break;
                case "DMI - Department of Math and Computer Science":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.94972, 32.59963),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.94972, 32.59963),
                        ),
                      ));
                  break;
                case "Department of Chemistry":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.94899, 32.5991),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.94899, 32.5991),
                        ),
                      ));
                  break;
                case "Department of Physics":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.94946, 32.59902),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.94946, 32.59902),
                        ),
                      ));
                  break;
                case "DCB - Department of Biologogical Sciences":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.95008, 32.59953),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.95008, 32.59953),
                        ),
                      ));
                  break;
                case "Student Center":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.950728, 32.598466),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.950728, 32.598466),
                        ),
                      ));
                  break;
                case "CIUEM parking site":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.949816, 32.600577),
                              builder: (ctx) => const Icon(Icons.local_parking),
                            ),
                          ],
                          center: LatLng(-25.949816, 32.600577),
                        ),
                      ));
                  break;
                case "Department of Physics parking site":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.949845, 32.598742),
                              builder: (ctx) => const Icon(Icons.local_parking),
                            ),
                          ],
                          center: LatLng(-25.949845, 32.598742),
                        ),
                      ));
                  break;
                case "Mazula Central Library parking site":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.951745, 32.599761),
                              builder: (ctx) => const Icon(Icons.local_parking),
                            ),
                          ],
                          center: LatLng(-25.951745, 32.599761),
                        ),
                      ));
                  break;
                case "African Studies Center":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.95016, 32.60137),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.95016, 32.60137),
                        ),
                      ));
                  break;
                case "Sino-Mozambique Cultural Center":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.95032, 32.59442),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.95032, 32.59442),
                        ),
                      ));
                  break;
                case "DRA - Central Academic Registry":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.95234, 32.60219),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.95234, 32.60219),
                        ),
                      ));
                  break;
                case "Mozambique History Archive":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.948, 32.59405),
                              builder: (ctx) => const Icon(Icons.school),
                            ),
                          ],
                          center: LatLng(-25.948, 32.59405),
                        ),
                      ));
                  break;
                case "Sports Pavillion":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.94927, 32.59549),
                              builder: (ctx) => const Icon(Icons.sports),
                            ),
                          ],
                          center: LatLng(-25.94927, 32.59549),
                        ),
                      ));
                  break;
                case "Languages Center":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.948383, 32.594858),
                              builder: (ctx) => const Icon(Icons.language),
                            ),
                          ],
                          center: LatLng(-25.948383, 32.594858),
                        ),
                      ));
                  break;
                case "University Clinic":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.94942, 32.59225),
                              builder: (ctx) =>
                                  const Icon(Icons.local_hospital),
                            ),
                          ],
                          center: LatLng(-25.94942, 32.59225),
                        ),
                      ));
                  break;
                case "Xerox Copy Shop":
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoundPoiMapPage(
                          poiName: result,
                          markers: [
                            Marker(
                              anchorPos: AnchorPos.align(AnchorAlign.center),
                              height: 30,
                              width: 30,
                              point: LatLng(-25.95096, 32.60041),
                              builder: (ctx) =>
                                  const Icon(Icons.local_print_shop),
                            ),
                          ],
                          center: LatLng(-25.95096, 32.60041),
                        ),
                      ));
                  break;
              }
            },
          );
        });
  }
}
