import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class WorldMap extends StatefulWidget {
  const WorldMap({super.key});

  @override
  State<WorldMap> createState() => _WorldMapState();
}

class _WorldMapState extends State<WorldMap> {
  LatLng _currentPosition = LatLng(0, 0);
  final MapController _mapController = new MapController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getPosition();
    });
  }

  Future<void> _getPosition() async {
    LocationPermission permission;

    bool isEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isEnabled) {
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return;
    }

    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude);
      _mapController.move(_currentPosition, 30);
      // print(_currentPosition);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _mapController,
      options: const MapOptions(
          initialCenter: LatLng(51.509364, -0.128928),
          initialZoom: 3.2,
          interactionOptions: InteractionOptions(
              flags: InteractiveFlag.drag |
                  InteractiveFlag.scrollWheelZoom |
                  InteractiveFlag.pinchZoom)),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'dev.fleaflet.flutter_map.example',
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 7, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: _getPosition,
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), padding: EdgeInsets.all(15)),
                      child: Icon(Icons.my_location)),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
