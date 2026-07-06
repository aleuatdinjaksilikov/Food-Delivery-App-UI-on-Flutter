import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/navigation/navigation_extension.dart';
import 'package:food_delivery_app_ui/shared/app_button.dart';
import 'package:geolocator/geolocator.dart';

class LocationAccessPage extends StatelessWidget {
  const LocationAccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(90)),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/3861/3861399.png",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 50),
            AppButton(
              btnText: "ACCESS LOCATION",
              onTap: () async {
                await requestLocationPermission();
                if(!context.mounted) return;
                context.toHome();
              },
            ),
            SizedBox(height: 25),
            Text(
              "DFOOD WILL ACCESS YOUR LOCATION ONLY WHILE USING THE APP",
              style: TextStyle(fontSize: 16, fontFamily: "sen"),
              textAlign: .center,
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> requestLocationPermission() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      debugPrint("Геолокация выключена");
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        debugPrint("Пользователь отказал");
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      debugPrint("Разрешение запрещено навсегда");
      return false;
    }

    return true;
  }
}
