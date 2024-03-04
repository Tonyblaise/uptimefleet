import 'dart:async';

import 'serialization_util.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: FlutterFlowTheme.of(context).primary,
          child: Center(
            child: Image.asset(
              'assets/images/Splash-Screen_2667.A-_ios-_Role_1.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'login': ParameterData.none(),
  'forgotPassword': ParameterData.none(),
  'checkYourEmail': ParameterData.none(),
  'changePassword': (data) async => ParameterData(
        allParams: {
          'dfdfg': getParameter<double>(data, 'dfdfg'),
        },
      ),
  'connectionProblem': ParameterData.none(),
  'dashboardDriver': ParameterData.none(),
  'vehicle_confirmation': (data) async => ParameterData(
        allParams: {
          'service': getParameter<String>(data, 'service'),
          'latLng': getParameter<LatLng>(data, 'latLng'),
          'additionalInfo': getParameter<String>(data, 'additionalInfo'),
        },
      ),
  'serviceConfirmation': ParameterData.none(),
  'driverChat': (data) async => ParameterData(
        allParams: {
          'state': getParameter<int>(data, 'state'),
        },
      ),
  'chat_2_Details': (data) async => ParameterData(
        allParams: {
          'chatRef': getParameter<String>(data, 'chatRef'),
        },
      ),
  'image_Details': (data) async => ParameterData(
        allParams: {
          'chatRef': getParameter<String>(data, 'chatRef'),
        },
      ),
  'dashboardTechnician': ParameterData.none(),
  'service_summary': ParameterData.none(),
  'changeYourPhoto': ParameterData.none(),
  'settings': ParameterData.none(),
  'settingsSp': ParameterData.none(),
  'selectLocation': (data) async => ParameterData(
        allParams: {
          'service': getParameter<String>(data, 'service'),
          'additionalInfo': getParameter<String>(data, 'additionalInfo'),
        },
      ),
  'onboard': (data) async => ParameterData(
        allParams: {
          'fleetManagerId': getParameter<String>(data, 'fleetManagerId'),
          'servviceProviderId':
              getParameter<String>(data, 'servviceProviderId'),
        },
      ),
  'start_request': (data) async => ParameterData(
        allParams: {
          'request': getParameter<String>(data, 'request'),
        },
      ),
  'verify': (data) async => ParameterData(
        allParams: {
          'phoneNumber': getParameter<String>(data, 'phoneNumber'),
          'serviceProviderId': getParameter<String>(data, 'serviceProviderId'),
          'fleetManagerId': getParameter<String>(data, 'fleetManagerId'),
          'signUpType': getParameter<String>(data, 'signUpType'),
          'fullName': getParameter<String>(data, 'fullName'),
          'signUp': getParameter<bool>(data, 'signUp'),
        },
      ),
  'testy': ParameterData.none(),
  'tech_status': ParameterData.none(),
  'technicianChat': (data) async => ParameterData(
        allParams: {
          'state': getParameter<int>(data, 'state'),
        },
      ),
  'navigation': (data) async => ParameterData(
        allParams: {
          'locationLat': getParameter<double>(data, 'locationLat'),
          'loocationLng': getParameter<double>(data, 'loocationLng'),
          'destLat': getParameter<double>(data, 'destLat'),
          'destLng': getParameter<double>(data, 'destLng'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
