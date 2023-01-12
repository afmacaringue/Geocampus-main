import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';

class FoundPoiMapPage extends StatelessWidget {
  final PopupController popupController = PopupController();
  final String poiName;
  final LatLng center;
  static const String route = 'Found Poi Map';
  final List<Marker> markers;
  FoundPoiMapPage({
    Key? key,
    required this.poiName,
    required this.markers,
    required this.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Center(child: Text('UEM - Main Campus Map\nSearch Result')),
      ),
      body: Center(
        child: Stack(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlutterMap(
                options: MapOptions(
                  zoom: 18,
                  maxZoom: 20.0,
                  center: center,
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
                                color: Colors.green,
                                child: GestureDetector(
                                  onTap: () => debugPrint('Popup tap!'),
                                  child: Center(
                                    child: Text(
                                      poiName,
                                      textAlign: TextAlign.center,
                                      style:
                                          const TextStyle(color: Colors.white),
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
        ),
      ),
    );
  }
}
