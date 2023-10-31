import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _Attribution = prefs.getString('ff_Attribution') ?? _Attribution;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _Attribution =
      '<a href=\"https://www.flaticon.com/free-iconedical\" title=\"medical icons\">Medical icons created by Freepik - Flaticon</a>s/';
  String get Attribution => _Attribution;
  set Attribution(String _value) {
    _Attribution = _value;
    prefs.setString('ff_Attribution', _value);
  }

  int _age = 0;
  int get age => _age;
  set age(int _value) {
    _age = _value;
  }

  int _bp = 0;
  int get bp => _bp;
  set bp(int _value) {
    _bp = _value;
  }

  int _chol = 0;
  int get chol => _chol;
  set chol(int _value) {
    _chol = _value;
  }

  int _fbs = 0;
  int get fbs => _fbs;
  set fbs(int _value) {
    _fbs = _value;
  }

  int _maxhr = 0;
  int get maxhr => _maxhr;
  set maxhr(int _value) {
    _maxhr = _value;
  }

  double _stdep = 0.0;
  double get stdep => _stdep;
  set stdep(double _value) {
    _stdep = _value;
  }

  String _Result = '';
  String get Result => _Result;
  set Result(String _value) {
    _Result = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
