// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_mapbox/flutter_mapbox.dart';
import 'package:location/location.dart';

MapBoxNavigation? _directions;
MapBoxOptions? _options;

bool _isMultipleStop = false;
double? _distanceRemaining, _durationRemaining;
MapBoxNavigationViewController? _controller;
bool _routeBuilt = false;
bool _isNavigating = false;
dynamic prevEvent;
List<WayPoint> _pois = [];
bool _poisShowing = false;
String _platformVersion = 'Unknown';
String? _instruction = "";

WayPoint _home = WayPoint(
    id: "1", name: "Home", latitude: 53.2110237, longitude: -2.8944236);

WayPoint _store = WayPoint(
    id: "2", name: "Padeswood", latitude: 53.701198, longitude: -2.461296);

Future<void> startNavigationAction() async {
// _controller!.finishNavigation();
  var wayPoints = <WayPoint>[];
  wayPoints.add(_home);
  wayPoints.add(_store);
  _isMultipleStop = wayPoints.length > 2;
  _directions!.startNavigation(wayPoints: wayPoints, options: _options!);
}

class NavigationWithMapbox extends StatefulWidget {
  @override
  const NavigationWithMapbox({
    super.key,
    this.width,
    this.height,
    required this.locationLat,
    required this.locationLng,
    required this.userLat,
    required this.userLng,
    required this.arrivedAction,
  });

  final double? width;
  final double? height;
  final double locationLat;
  final double locationLng;
  final double userLat;
  final double userLng;
  final Future Function() arrivedAction;

  @override
  State<NavigationWithMapbox> createState() => _NavigationWithMapboxState();
}

class _NavigationWithMapboxState extends State<NavigationWithMapbox> {
  void initState() {
    super.initState();
    Future((() {
      initialize();
      startNavigationAction();
    }));
  }

  Future<void> initialize() async {
    setState(() {
      _home = WayPoint(
          id: "1",
          name: "Home",
          latitude: widget.locationLat,
          longitude: widget.locationLng);

      _store = WayPoint(
          id: "2",
          name: "Destination",
          latitude: widget.userLat,
          longitude: widget.userLng);
    });
    try {
      Location location = Location();
      // If the widget was removed from the tree while the asynchronous platform
      // message was in flight, we want to discard the reply rather than calling
      // setState to update our non-existent appearance.
      if (!mounted) return;

      bool _serviceEnabled;
      PermissionStatus _permissionGranted;
      LocationData _locationData;

      _serviceEnabled = await location.serviceEnabled();
      if (!_serviceEnabled) {
        _serviceEnabled = await location.requestService();
        if (!_serviceEnabled) {
          return;
        }
      }

      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
        if (_permissionGranted != PermissionStatus.granted) {
          return;
        }
      }
      _locationData = await location.getLocation();

      List<WayPoint> pois = [];

      _directions = MapBoxNavigation(onRouteEvent: _onEmbeddedRouteEvent);
      var options = MapBoxOptions(
          initialLatitude: 36.1175275,
          initialLongitude: -115.1839524,
          // avoid: ["motorway", "toll"],
          zoom: 13.0,
          tilt: 0.0,
          bearing: 0.0,
          enableRefresh: true,
          alternatives: true,
          voiceInstructionsEnabled: true,
          bannerInstructionsEnabled: true,
          allowsUTurnAtWayPoints: true,
          mode: MapBoxNavigationMode.drivingWithTraffic,
          units: VoiceUnits.imperial,
          simulateRoute: true,
          longPressDestinationEnabled: true,
          // pois: _pois,
          mapStyleUrlDay: "mapbox://styles/mapbox/navigation-day-v1",
          mapStyleUrlNight: "mapbox://styles/mapbox/navigation-night-v1",
          language: "en-GB");

      setState(() {
        _options = options;
        _pois = pois;
      });
    } catch (err) {
      print(err);
    }
  }

  Future<void> _onEmbeddedRouteEvent(e) async {
    _distanceRemaining = await _controller!.distanceRemaining;
    _durationRemaining = await _controller!.durationRemaining;
    print(e.eventType);

    if (prevEvent != null &&
        prevEvent == e.eventType &&
        e.eventType != MapBoxEvent.annotation_tapped &&
        e.eventType != MapBoxEvent.map_position_changed) return;

    switch (e.eventType) {
      case MapBoxEvent.annotation_tapped:
        var annotation = await _controller!.selectedAnnotation;
        print(annotation);
        break;
      case MapBoxEvent.map_position_changed:
        var coords = await _controller!.centerCoordinates;
        var zoom = await _controller!.zoomLevel;

        break;
      case MapBoxEvent.progress_change:
        var progressEvent = e.data as RouteProgressEvent;
        if (progressEvent.currentStepInstruction != null)
          _instruction = progressEvent.currentStepInstruction;
        break;
      case MapBoxEvent.route_building:
      case MapBoxEvent.route_built:
        setState(() {
          _routeBuilt = true;
        });
        break;
      case MapBoxEvent.route_build_failed:
        setState(() {
          _routeBuilt = false;
        });
        break;
      case MapBoxEvent.navigation_running:
        setState(() {
          _isNavigating = true;
        });
        break;
      case MapBoxEvent.on_arrival:
        if (!_isMultipleStop) {
          await widget.arrivedAction();
          await Future.delayed(Duration(seconds: 3));
          await _controller!.finishNavigation();
        } else {}
        break;
      case MapBoxEvent.navigation_finished:
      case MapBoxEvent.navigation_cancelled:
        setState(() {
          _routeBuilt = false;
          _isNavigating = false;
        });
        break;
      default:
        break;
    }
    setState(() {
      prevEvent = e.eventType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.grey,
        child: MapBoxNavigationView(
            options: _options,
            onRouteEvent: _onEmbeddedRouteEvent,
            onCreated: (MapBoxNavigationViewController controller) async {
              _controller = controller;
              _controller!.initialize();
            }),
      ),
    );
  }
}
