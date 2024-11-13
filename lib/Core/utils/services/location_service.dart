import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationService {
  Future<String> getCityAndCountry() async {
    try {
      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return 'Location services are disabled.';
      }

      // Check permissions
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return 'Location permissions are denied.';
        }
      }

      const LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
      );
      // Get current position
      Position position = await Geolocator.getCurrentPosition(
          locationSettings: locationSettings);

      // Convert coordinates to city and country
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark placemark = placemarks[0];
      return '${placemark.locality}, ${placemark.country}';
    } catch (e) {
      return 'Error: $e';
    }
  }
}
