import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

bool checkNull(String? string) {
  // check if a string is empty or null
  if (string == null || string.isEmpty) {
    return true;
  } else {
    return false;
  }
}

bool checkNullImage(String? image) {
  // check if a string is empty or null
  if (image == null || image.isEmpty) {
    return true;
  } else {
    return false;
  }
}

String convertLatLngToString(LatLng position) {
  // convert latlng to string
  return '${position.toString}';
}

double getLat(LatLng latLng) {
  // get latitude from latLng
  return latLng.latitude;
}

double getLng(LatLng latLng) {
  // get longitude from latLng
// get longitude from latLng
  return latLng.longitude;
}

DateTime converUnixTimestamp(int timestamp) {
  int timestampInMilliseconds = timestamp; // Example timestamp
  DateTime convertedDate =
      DateTime.fromMillisecondsSinceEpoch(timestampInMilliseconds);
  return convertedDate;
}

double? convertStringToDouble(String? stringToConvert) {
  String? myString = stringToConvert;
  double? myDouble = num.tryParse(myString!)?.toDouble();
  return myDouble;
}

LatLng converLatLngStringToLatLng(
  double lat,
  double lng,
) {
  // convert lat and lng string to LatLng
  return LatLng(lat, lng);
}

String combineTextNames(List<String> text) {
  // function to join a list of texts to a single string using ,
  return text.join(',');
}
