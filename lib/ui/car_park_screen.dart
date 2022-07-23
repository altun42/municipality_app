import 'dart:async';

import 'package:flutter/material.dart';
import 'package:municipality_app/widgets/top_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CarParkScreen extends StatefulWidget {
  const CarParkScreen({Key? key}) : super(key: key);

  @override
  State<CarParkScreen> createState() => _CarParkScreenState();
}

class _CarParkScreenState extends State<CarParkScreen> {
  Completer<GoogleMapController> _completer = Completer<GoogleMapController>();
  Map<MarkerId, Marker> _markers = <MarkerId, Marker>{};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            TopBar(backgroundColor: Colors.blue, title: "OTOPARKLAR"),
            Container(
              height: 600,
              width: double.maxFinite,
              child: GoogleMap(
                mapType: MapType.satellite,
                markers: Set<Marker>.of(_markers.values),
                initialCameraPosition: CameraPosition(
                  target: LatLng(37.8639995,27.1939509),
                  zoom: 12.92,
                ),
                onMapCreated: (GoogleMapController controller) {
                  final MarkerId markerId = MarkerId("Belediye");
                  final Marker marker = Marker(
                    markerId: markerId,
                    position: LatLng(37.8639995,27.1939509),
                    infoWindow: InfoWindow(
                      title: "Kuşadası Belediyesi",
                      snippet: "Otopark Alanları",
                      onTap: () {
                        debugPrint("marker tıklandı");
                      },
                    ),
                  );

                  _markers[markerId] = marker;
                  _completer.complete(controller);
                },
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
