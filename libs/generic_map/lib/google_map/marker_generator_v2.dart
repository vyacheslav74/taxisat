// import 'dart:typed_data';
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:generic_map/extensions.dart';
// import 'package:generic_map/generic_map.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MarkerGeneratorV2 extends StatefulWidget {
//   const MarkerGeneratorV2({
//     super.key,
//     required this.widgetMarkers,
//     required this.onMarkerGenerated,
//   });
//   final List<CustomMarker> widgetMarkers;
//   final ValueChanged<List<Marker>> onMarkerGenerated;

//   @override
//   State<MarkerGeneratorV2> createState() => _MarkerGeneratorState();
// }

// class _MarkerGeneratorState extends State<MarkerGeneratorV2> {
//   List<GlobalKey> globalKeys = [];
//   List<CustomMarker> lastMarkers = [];

//   Future<Marker> _convertToMarker(GlobalKey key) async {
//     RenderRepaintBoundary boundary =
//         key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
//     final image = await boundary.toImage(
//         pixelRatio: WidgetsBinding.instance.window.devicePixelRatio * 0.1);
//     final byteData =
//         await image.toByteData(format: ImageByteFormat.png) ?? ByteData(0);
//     final uint8List = byteData.buffer.asUint8List();
//     final widgetMarker = widget.widgetMarkers[globalKeys.indexOf(key)];
//     return Marker(
//       markerId: MarkerId(
//         widgetMarker.toString(),
//       ),
//       position: widgetMarker.position.toGoogleMapLatLng(),
//       icon: BitmapDescriptor.fromBytes(uint8List),
//       rotation: widgetMarker.rotation.toDouble(),
//     );
//   }

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) => onBuildCompleted());
//   }

//   Future<void> onBuildCompleted() async {
//     /// Skip when there's no change in widgetMarkers.
//     if (lastMarkers == widget.widgetMarkers) {
//       return;
//     }
//     lastMarkers = widget.widgetMarkers;
//     final markers =
//         await Future.wait(globalKeys.map((key) => _convertToMarker(key)));
//     widget.onMarkerGenerated.call(markers);
//   }

//   @override
//   Widget build(BuildContext context) {
//     globalKeys = [];
//     return Transform.translate(
//       /// Place markers outside of screens
//       /// To hide them in case the map becomes transparent.
//       offset: Offset(
//         -MediaQuery.of(context).size.width,
//         -MediaQuery.of(context).size.height,
//       ),
//       child: Stack(
//         children: widget.widgetMarkers.map(
//           (widgetMarker) {
//             final key = GlobalKey();
//             globalKeys.add(key);
//             return RepaintBoundary(
//               key: key,
//               child: widgetMarker.widget,
//             );
//           },
//         ).toList(),
//       ),
//     );
//   }
// }
