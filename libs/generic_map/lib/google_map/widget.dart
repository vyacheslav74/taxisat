import 'package:flutter/material.dart';
import 'package:generic_map/google_map/provider.dart';
import 'package:generic_map/interfaces/interfaces.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:generic_map/extensions.dart';
import 'package:generic_map/google_map/controller.dart';

class GoogleMapView extends StatefulWidget {
  final MapViewMode mode;
  final bool interactive;
  final GoogleMapProvider provider;
  final Function(Place?)? onMapMoved;
  final Place initialLocation;
  final List<PolyLineLayer> polylines;
  final List<CustomMarker> markers;
  final List<CircleMarker> circleMarkers;
  final Function(MapViewController)? onControllerReady;
  final EdgeInsets padding;

  final AddressResolver? addressResolver;

  const GoogleMapView({
    super.key,
    required this.initialLocation,
    required this.polylines,
    required this.mode,
    this.onControllerReady,
    required this.onMapMoved,
    required this.interactive,
    required this.padding,
    required this.markers,
    required this.addressResolver,
    required this.circleMarkers,
    required this.provider,
  });

  @override
  State<GoogleMapView> createState() => _GoogleMapMapViewState();
}

class _GoogleMapMapViewState extends State<GoogleMapView> {
  final GoogleMapsController controller = GoogleMapsController();
  CameraPosition? cameraPosition;
  late List<GlobalKey> markerKeys;
  Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
    markerKeys = widget.markers.map((e) => GlobalKey()).toList();
  }

  @override
  void dispose() {
    controller.mapController.future.then((value) => value.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // if (markers.map((e) => e.markerId.value).toList() !=
    //     widget.markers
    //         .map((e) => '${e.position.latitude},${e.position.longitude}')
    //         .toList()) {
    //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //     MarkerGenerator(widget.markers, (bytes) {
    //       mapBitmapsToMarkers(widget.markers, bytes);
    //     }).generate(context);
    //   });
    // }
    return Stack(
      children: [
        // if (widget.markers.isNotEmpty)
        //   MarkerGeneratorV2(
        //     widgetMarkers: widget.markers,
        //     onMarkerGenerated: (_markers) {
        //       setState(
        //         () {
        //           markers = _markers.toSet();
        //         },
        //       );
        //     },
        //   ),
        FutureBuilder(
            future: Future.wait(widget.provider.parseMarkers(widget.markers)),
            builder: (context, markersSnapshot) {
              return GoogleMap(
                padding: widget.padding,
                scrollGesturesEnabled: widget.interactive,
                zoomGesturesEnabled: widget.interactive,
                myLocationButtonEnabled: false,
                zoomControlsEnabled: widget.interactive,
                tiltGesturesEnabled: widget.interactive,
                minMaxZoomPreference: const MinMaxZoomPreference(3, 20),
                rotateGesturesEnabled: widget.interactive,
                onMapCreated: (controller) {
                  if (widget.onControllerReady != null) {
                    widget.onControllerReady!(this.controller);
                  }
                  this.controller.mapController.complete(controller);
                },
                onCameraMoveStarted: () => widget.onMapMoved?.call(null),
                onCameraIdle: () async {
                  if (cameraPosition == null) return;
                  final reverseGeocodeResult =
                      await widget.addressResolver?.call(
                    MapProviderEnum.googleMaps,
                    cameraPosition!.target.toLatLng(),
                  );
                  widget.onMapMoved?.call(reverseGeocodeResult);
                },
                onCameraMove: widget.mode != MapViewMode.picker
                    ? null
                    : (position) => cameraPosition = position,
                markers: markersSnapshot.hasData
                    ? markersSnapshot.data!.toSet()
                    : {},
                circles: widget.provider
                    .parseCircleMarkers(widget.circleMarkers)
                    .toSet(),
                polylines:
                    widget.provider.parsePolyLines(widget.polylines).toSet(),
                initialCameraPosition: CameraPosition(
                  target: widget.initialLocation.latLng.toGoogleMapLatLng(),
                  zoom: 16,
                ),
              );
            }),
      ],
    );
  }

  // void mapBitmapsToMarkers(
  //     List<CustomMarker> appmarkers, List<Uint8List> bitmaps) {
  //   setState(() {
  //     markers = bitmaps.mapIndexed((i, bmp) {
  //       return Marker(
  //         markerId: MarkerId(
  //             '${appmarkers[i].position.latitude},${appmarkers[i].position.longitude}'),
  //         rotation: appmarkers[i].rotation.toDouble(),
  //         position: widget.markers[i].position.toGoogleMapLatLng(),
  //         icon: BitmapDescriptor.fromBytes(
  //           bmp,
  //           size: Size(
  //             appmarkers[i].width ?? 100,
  //             appmarkers[i].height ?? 100,
  //           ),
  //         ),
  //       );
  //     }).toList();
  //   });
  // }
}
