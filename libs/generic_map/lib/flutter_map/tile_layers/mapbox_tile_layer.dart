import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';

TileLayer mapBoxTileLayer({
  required String accessToken,
  required String tileSetId,
  required String userId,
  required bool useCachedTiles,
}) {
   return TileLayer(
    urlTemplate:
	   "$accessToken",
    additionalOptions: {"access_token": accessToken},
	userAgentPackageName: 'com.satka.taxi.rider', 
	subdomains: ['a', 'b', 'c'],
	tileDisplay: const TileDisplay.fadeIn(), // Анимация загрузки
    keepBuffer: 9, // Количество тайлов для предзагрузки
    maxNativeZoom: 18,

    maxZoom: 18,
    tileProvider: useCachedTiles
        ? const FMTCStore('mapStore').getTileProvider()
        : CancellableNetworkTileProvider(silenceExceptions: true),
  );
}
