import 'interfaces.dart';

abstract class MapProvider<MarkerType, CircleType, PolyLineType> {
  List<MarkerType> parseMarkers(List<CustomMarker> marker);
  List<CircleType> parseCircleMarkers(List<CircleMarker> marker);
  List<PolyLineType> parsePolyLines(List<PolyLineLayer> polyLine);
}
