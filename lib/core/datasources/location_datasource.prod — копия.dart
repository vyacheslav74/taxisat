import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';

import 'location_datasource.dart';

@prod
@LazySingleton(as: LocationDatasource)
class LocationDatasourceImpl implements LocationDatasource {
  final BuildContext? context;

  LocationDatasourceImpl({this.context});

  @override
  Future<LatLng> getCurrentLocation() async {
    try {
      // 1. Проверяем разрешения
      final permissionGranted = await _checkLocationPermission();
      if (!permissionGranted) {
        return _getFallbackLocation();
      }

      // 2. Пытаемся получить текущую позицию
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: const Duration(seconds: 10),
      ).timeout(const Duration(seconds: 15));

      return LatLng(position.latitude, position.longitude);
    } on LocationServiceDisabledException {
      _showLocationDisabledDialog();
      return _getFallbackLocation();
    } on PermissionDeniedException {
      _showLocationDeniedDialog();
      return _getFallbackLocation();
    } on TimeoutException {
      return _getFallbackLocation();
    } catch (e) {
      debugPrint('Location error: $e');
      return _getFallbackLocation();
    }
  }

  Future<bool> _checkLocationPermission() async {
    final status = await Geolocator.checkPermission();
    if (status == LocationPermission.denied) {
      final newStatus = await Geolocator.requestPermission();
      return newStatus == LocationPermission.always ||
          newStatus == LocationPermission.whileInUse;
    }
    return status == LocationPermission.always ||
        status == LocationPermission.whileInUse;
  }

  LatLng _getFallbackLocation() {
    return const LatLng(55.0462, 58.9769); 
  }

  void _showLocationDeniedDialog() {
    if (context == null || !context!.mounted) return;

    showDialog(
      context: context!,
      builder: (context) => AlertDialog(
        title: const Text('Доступ к геолокации запрещен'),
        content: const Text(
          'Для работы приложения требуется доступ к вашему местоположению. '
              'Пожалуйста, разрешите доступ в настройках устройства.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Geolocator.openAppSettings();
            },
            child: const Text('Настройки'),
          ),
        ],
      ),
    );
  }

  void _showLocationDisabledDialog() {
    if (context == null || !context!.mounted) return;

    showDialog(
      context: context!,
      builder: (context) => AlertDialog(
        title: const Text('Геолокация отключена'),
        content: const Text(
          'Службы геолокации отключены. Пожалуйста, включите GPS или '
              'сетевую геолокацию в настройках устройства.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Geolocator.openLocationSettings();
            },
            child: const Text('Настройки'),
          ),
        ],
      ),
    );
  }



  @override
  Future<bool> isLocationPermissionGranted() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return false;
    }
    return true;
  }


  @override
  Future<bool> isLocationServiceEnabled() async {
    return Geolocator.isLocationServiceEnabled();
  }
}

class _openBrowserSettings {
}
