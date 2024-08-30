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

  // custom
  dynamic _scrollController;
  dynamic get scrollController => _scrollController;
  set scrollController(dynamic value) {
    _scrollController = value;
  }

  dynamic _aboutKey;
  dynamic get aboutKey => _aboutKey;
  set aboutKey(dynamic value) {
    _aboutKey = value;
  }

  dynamic _section1Key;
  dynamic get section1Key => _section1Key;
  set section1Key(dynamic value) {
    _section1Key = value;
  }

  dynamic _portfolioKey;
  dynamic get portfolioKey => _portfolioKey;
  set portfolioKey(dynamic value) {
    _portfolioKey = value;
  }

  dynamic _test;
  dynamic get test => _test;
  set test(dynamic value) {
    _test = value;
  }
}
