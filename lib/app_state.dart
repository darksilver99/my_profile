import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  dynamic _test;
  dynamic get test => _test;
  set test(dynamic value) {
    _test = value;
  }

  double _scrollDistance = 0.0;
  double get scrollDistance => _scrollDistance;
  set scrollDistance(double value) {
    _scrollDistance = value;
  }
}
