// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:flutter_mapbox_navigation/flutter_mapbox_navigation.dart';

class MapboxNavigationWidget extends StatefulWidget {
  const MapboxNavigationWidget({
    super.key,
    this.width,
    this.height,
    required this.originLat,
    required this.originLng,
    required this.desitinationLat,
    required this.destinationLng,
  });

  final double? width;
  final double? height;
  final double originLat;
  final double originLng;
  final double desitinationLat;
  final double destinationLng;

  @override
  State<MapboxNavigationWidget> createState() => _MapboxNavigationWidgetState();
}

class _MapboxNavigationWidgetState extends State<MapboxNavigationWidget> {
  String? _platformVersion;
  String? _instruction;

  final _home = WayPoint(
      name: "Home",
      latitude: 37.77440680146262,
      longitude: -122.43539772352648,
      isSilent: false);

  final _store = WayPoint(
      name: "Store",
      latitude: 37.76556957793795,
      longitude: -122.42409811526268,
      isSilent: false);

  final bool _isMultipleStop = false;
  double? _distanceRemaining, _durationRemaining;
  MapBoxNavigationViewController? _controller;
  bool _routeBuilt = false;
  bool _isNavigating = false;
  bool _inFreeDrive = false;
  late MapBoxOptions _navigationOption;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initialize() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    _navigationOption = MapBoxNavigation.instance.getDefaultOptions();
    _navigationOption.simulateRoute = true;
    _navigationOption.language = "en";
    //_navigationOption.initialLatitude = 36.1175275;
    //_navigationOption.initialLongitude = -115.1839524;
    MapBoxNavigation.instance.registerRouteEventListener(_onEmbeddedRouteEvent);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text("Start Navigation"),
                      onPressed: () async {
                        var wayPoints = <WayPoint>[];
                        wayPoints.add(_home);
                        wayPoints.add(_store);
                        var opt = MapBoxOptions.from(_navigationOption);
                        opt.simulateRoute = true;
                        opt.voiceInstructionsEnabled = true;
                        opt.bannerInstructionsEnabled = true;
                        opt.units = VoiceUnits.metric;
                        opt.language = "en";
                        await MapBoxNavigation.instance.startNavigation(
                            wayPoints: wayPoints, options: opt);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20, top: 20, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const Text("Duration Remaining: "),
                          Text(_durationRemaining != null
                              ? "${(_durationRemaining! / 60).toStringAsFixed(0)} minutes"
                              : "---")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          const Text("Distance Remaining: "),
                          Text(_distanceRemaining != null
                              ? "${(_distanceRemaining! * 0.000621371).toStringAsFixed(1)} miles"
                              : "---")
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider()
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Future<void> _onEmbeddedRouteEvent(e) async {
    _distanceRemaining = await MapBoxNavigation.instance.getDistanceRemaining();
    _durationRemaining = await MapBoxNavigation.instance.getDurationRemaining();

    switch (e.eventType) {
      case MapBoxEvent.progress_change:
        var progressEvent = e.data as RouteProgressEvent;
        if (progressEvent.currentStepInstruction != null) {
          _instruction = progressEvent.currentStepInstruction;
        }
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
          await Future.delayed(const Duration(seconds: 3));
          await _controller?.finishNavigation();
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
    setState(() {});
  }
}
