import 'package:flutter/material.dart';
import 'package:placepicker/custom_place_picker.dart';
import 'package:placepicker/place_model.dart';

import 'custom_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var placePickerValue = PlaceModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomPlacePicker(
            iOSGoogleMapsApiKey: '',
            androidGoogleMapsApiKey: '',
            webGoogleMapsApiKey: '',
            onSelect: (place) async {
              setState(() => placePickerValue = place);
            },
            defaultText: 'Select Location',
            icon: const Icon(
              Icons.place,
              color: Colors.blue,
              size: 16.0,
            ),
            buttonOptions: CustomButtonOptions(
              width: 200.0,
              height: 40.0,
              color: Colors.blue,
              textStyle: const TextStyle(
                    color: Colors.white
                  ),
              elevation: 2.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}
