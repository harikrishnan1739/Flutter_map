import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:permission_handler/permission_handler.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<CurrentLocation> createState() => _CurrentLocationtate();
}

class _CurrentLocationtate extends State<CurrentLocation> {
  @override
  void initState() {
    requestLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.transparent,
        ),
        backgroundColor: const Color.fromARGB(255, 112, 107, 76),
        title: Padding(
          padding: const EdgeInsets.only(left: 66.0),
          child: Text(
            'Flutter Map',
            style: GoogleFonts.biryani(
                color: const Color.fromARGB(116, 176, 174, 174),
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Container(
        child: OpenStreetMapSearchAndPick(
          center: LatLong(10.1632, 76.6413),
          onPicked: ((pickedData) {}),
        ),
      ),
    );
  }

  void requestLocation() {
    Permission.location.request();
  }
}
