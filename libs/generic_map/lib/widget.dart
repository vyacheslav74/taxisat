import 'package:flutter/material.dart';

import 'package:generic_map/flutter_map/widget.dart';
import 'package:generic_map/generic_map.dart';
import 'package:generic_map/google_map/widget.dart';
import 'package:latlong2/latlong.dart';

const googleMapUseFallbackAsset = true;

class GenericMap extends StatefulWidget {
  final MapViewMode mode;
  final CenterMarker Function(
    BuildContext context,
    GlobalKey key,
    String? address,
  )? centerMarkerBuilder;
  final AddressResolver? addressResolver;
  final MapProvider provider;
  final bool interactive;
  final Function(MapViewController)? onControllerReady;
  final Function(Place?)? onMapMoved;
  final Place initialLocation;
  final List<PolyLineLayer> polylines;
  final List<CustomMarker> markers;
  final List<CircleMarker> circleMarkers;
  final EdgeInsets padding;
  final bool useCachedTiles;
  final bool isPolylineDrawEnabled;
  final PolyEditor? polyEditor;
  final Function(List<LatLng>)? onPolylineDrawn;

  GenericMap({
    super.key,
    required this.initialLocation,
    required this.provider,
    this.mode = MapViewMode.static,
    this.onControllerReady,
    this.polylines = const [],
    this.onMapMoved,
    this.useCachedTiles = false,
    this.interactive = false,
    this.padding = EdgeInsets.zero,
    this.markers = const <CustomMarker>[],
    this.centerMarkerBuilder,
    this.addressResolver,
    this.circleMarkers = const [],
    this.isPolylineDrawEnabled = false,
    this.polyEditor,
    this.onPolylineDrawn,
  }) {
    assert(
      mode == MapViewMode.picker && centerMarkerBuilder != null ||
          mode == MapViewMode.static,
      'centerMarkerBuilder must be provided when mode is MapViewMode.picker',
    );
    assert(
      mode == MapViewMode.picker && addressResolver != null ||
          mode == MapViewMode.static,
      'addressResolver must be provided when mode is MapViewMode.picker',
    );
    assert(
      mode == MapViewMode.picker && interactive || mode == MapViewMode.static,
      'interactive must be true when mode is MapViewMode.picker',
    );
  }

  @override
  State<GenericMap> createState() => _GenericMapState();
}

class _GenericMapState extends State<GenericMap> with TickerProviderStateMixin {
  String? currentAddress;
  final markerKey = GlobalKey();

  @override
  void initState() {
    currentAddress ??= widget.initialLocation.address;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: widget.provider is! GoogleMapProvider
              ? FlutterMapView(
                  mode: widget.mode,
                  provider: widget.provider,
                  onControllerReady: widget.onControllerReady,
                  initialLocation: widget.initialLocation,
                  padding: widget.padding,
                  polylines: widget.polylines,
                  interactive: widget.interactive,
                  useCachedTiles: widget.useCachedTiles,
                  addressResolver: widget.addressResolver,
                  markerKey: markerKey,
                  circleMarkers: widget.circleMarkers,
                  centerMarker: widget.centerMarkerBuilder
                      ?.call(context, markerKey, currentAddress),
                  onMapMoved: (fullLocation) {
                    widget.onMapMoved?.call(fullLocation);
                    setState(() {
                      currentAddress = fullLocation?.address;
                    });
                  },
                  markers: widget.markers,
                  polyEditor: widget.polyEditor,
                  isPolylineDrawEnabled: widget.isPolylineDrawEnabled,
                  goToCurrentLocation: false, // TODO: implement
                  onPolylineDrawn: widget.onPolylineDrawn,
                )
              : GoogleMapView(
                  mode: widget.mode,
                  provider: widget.provider as GoogleMapProvider,
                  padding: widget.padding,
                  onControllerReady: widget.onControllerReady,
                  initialLocation: widget.initialLocation,
                  markers: widget.markers,
                  circleMarkers: widget.circleMarkers,
                  polylines: widget.polylines,
                  interactive: widget.interactive,
                  onMapMoved: (fullLocation) {
                    widget.onMapMoved?.call(fullLocation);
                    setState(() {
                      currentAddress = fullLocation?.address;
                    });
                  },
                  addressResolver: widget.addressResolver,
                ),
        ),
        if (widget.mode == MapViewMode.picker)
          Center(
            child: _buildCenterMarker(context, markerKey),
          )
      ],
    );
  }

  Widget _buildCenterMarker(BuildContext context, GlobalKey key) {
    final builder =
        widget.centerMarkerBuilder!.call(context, key, currentAddress);
    final aligment = builder.alignment;
    final offset = Offset(
      aligment.x * builder.size.width / 2,
      aligment.y * builder.size.height / 2,
    );
    return Transform.translate(
      offset: offset,
      child: builder.widget,
    );
  }
}
