import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';

class Buildings extends StatefulWidget {
  static const String route = 'Buildings';
  const Buildings({super.key});

  @override
  BuildingsState createState() => BuildingsState();
}

class BuildingsState extends State<Buildings> {
  final PopupController popupController = PopupController();

  late final List<Marker> markers;

  late int pointIndex;
  List<LatLng> points = [LatLng(-25.95, 32.6)];

  @override
  void initState() {
    pointIndex = 0;
    markers = [
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 30,
        width: 30,
        point: LatLng(-25.949517, 32.598989),
        builder: (ctx) => const Icon(Icons.home),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 30,
        width: 30,
        point: LatLng(-25.949739, 32.599676),
        builder: (ctx) => const Icon(Icons.home),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 30,
        width: 30,
        point: LatLng(-25.948996, 32.600513),
        builder: (ctx) => const Icon(Icons.home),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 30,
        width: 30,
        point: LatLng(-25.950375, 32.598656),
        builder: (ctx) => const Icon(Icons.home),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 30,
        width: 30,
        point: LatLng(-25.950954, 32.598345),
        builder: (ctx) => const Icon(Icons.home),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 30,
        width: 30,
        point: LatLng(-25.950173, 32.601639),
        builder: (ctx) => const Icon(Icons.home),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 30,
        width: 30,
        point: LatLng(-25.950848, 32.601864),
        builder: (ctx) => const Icon(Icons.home),
      ),
      Marker(
        anchorPos: AnchorPos.align(AnchorAlign.center),
        height: 30,
        width: 30,
        point: LatLng(-25.951745, 32.600791),
        builder: (ctx) => const Icon(Icons.home),
      ),
    ];
    super.initState();
  }

  void main() => runApp(
        const MaterialApp(
          debugShowCheckedModeBanner: false,
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        FlutterMap(
            options: MapOptions(
              zoom: 15.5,
              maxZoom: 17.0,
              center: LatLng(-25.95, 32.599),
              plugins: [
                MarkerClusterPlugin(),
              ],
              onTap: (_, __) => popupController.hideAllPopups(),
            ),
            children: <Widget>[
              TileLayerWidget(
                options: TileLayerOptions(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c'],
                ),
              ),
              MarkerClusterLayerWidget(
                options: MarkerClusterLayerOptions(
                  spiderfyCircleRadius: 80,
                  spiderfySpiralDistanceMultiplier: 2,
                  circleSpiralSwitchover: 12,
                  maxClusterRadius: 120,
                  rotate: true,
                  size: const Size(40, 40),
                  anchor: AnchorPos.align(AnchorAlign.center),
                  fitBoundsOptions: const FitBoundsOptions(
                    padding: EdgeInsets.all(50),
                    maxZoom: 15,
                  ),
                  markers: markers,
                  polygonOptions: const PolygonOptions(
                      borderColor: Colors.blueAccent,
                      color: Colors.black12,
                      borderStrokeWidth: 3),
                  popupOptions: PopupOptions(
                      popupSnap: PopupSnap.markerTop,
                      popupController: popupController,
                      popupBuilder: (_, marker) => Container(
                            width: 200,
                            height: 50,
                            color: Colors.blue,
                            child: GestureDetector(
                              onTap: () => debugPrint('Popup tap!'),
                              child: const Center(
                                child: Text(
                                  'Building',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )),
                  builder: (context, markers) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: Center(
                        child: Text(
                          markers.length.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ]),
      ],
    );
  }
}
