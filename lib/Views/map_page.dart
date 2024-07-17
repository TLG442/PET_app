import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  static const LatLng _pGooglePlex = LatLng(6.9271, 79.8612);
  static const LatLng _pMattegoda = LatLng(6.8135, 79.9724);

  @override
  Widget build(BuildContext context) {
    // Calculate the half screen height
    double halfScreenHeight = MediaQuery.of(context).size.height * 0.57;

    return Scaffold(
      body: Container(
        height: halfScreenHeight, // Set the height to half of the screen height
        child: GoogleMap(
          initialCameraPosition: CameraPosition(target: _pGooglePlex, zoom: 15),
          markers: {
            Marker(
                markerId: MarkerId("_current_location"),
                icon: BitmapDescriptor.defaultMarker,
                position: _pGooglePlex),
            Marker(
                markerId: MarkerId("_source_location"),
                icon: BitmapDescriptor.defaultMarker,
                position: _pMattegoda)
          },
        ),
      ),
    );
  }
}
