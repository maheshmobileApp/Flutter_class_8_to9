import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsView extends StatefulWidget {
  MapsView({Key? key}) : super(key: key);

  @override
  State<MapsView> createState() => _MapsViewState();
}

class _MapsViewState extends State<MapsView> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("google maps".toUpperCase(),),centerTitle: true,),
      body:
       const GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          zoom: 10, 
      target: LatLng(22.442540, 88.53005088),
      )
      ),
    );
  }
}