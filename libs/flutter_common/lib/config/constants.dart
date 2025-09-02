import 'package:flutter_common/core/enums/measurement_system.dart';
import 'package:generic_map/generic_map.dart';

import '../core/entities/place.dart';
import '../features/country_code_dialog/domain/entities/country_code.dart';

import 'package:http/http.dart' as http;

class Constants {
  // Константы
  static const String serverIp = "taxi-voyazh.ru";
  static const int resendOtpTime = 90;
  static const bool isDemoMode = true;
  static bool showTimeIn24HourFormat = true;
  static final CountryCode defaultCountry = CountryCode.parseByIso('RU');
  
  // Для MapBoxProvider
  static late final MapBoxProvider _mapBoxProvider;
  static bool _initialized = false;

  // Метод инициализации
  static Future<void> initialize() async {
    if (_initialized) return;

    try {
      final key = await loadMapboxKeyFromUrl('https://taxi-voyazh.ru/key_mapbox.txt');
      _mapBoxProvider = MapBoxProvider(
        secretKey: key,
        userId: "mapbox",
        tileSetId: "streets-v12",
      );
    } catch (e) {
      // Резервный ключ на случай ошибки
      _mapBoxProvider = MapBoxProvider(
        secretKey: "https://b.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png",
        userId: "mapbox",
        tileSetId: "streets-v12",
      );
      
    }

    _initialized = true;
  }

  // Геттер с проверкой инициализации
  static MapBoxProvider get mapBoxProvider {
    assert(_initialized, 'Constants not initialized! Call Constants.initialize() first');
    return _mapBoxProvider;
  }

  // Остальные константы
  static const PlaceEntity defaultLocation = PlaceEntity(
    coordinates: LatLngEntity(lat: 55.0462, lng: 58.9769), 
    address: "",
  );
  static const List<double> walletPresets = [100, 200, 500];
  static const MapProviderEnum defaultMapProvider = MapProviderEnum.openStreetMaps;

  static const MeasurementSystem defaultMeasurementSystem = MeasurementSystem.metric;
}

Future<String> loadMapboxKeyFromUrl(String url) async {
  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body.trim();
    }
    throw Exception('Failed to load key: ${response.statusCode}');
  } catch (e) {
    throw Exception('Error loading Mapbox key: $e');
  }
}