import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _TOKEN = prefs.getString('ff_TOKEN') ?? _TOKEN;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _TOKEN = '88678cac5ffcf32ea81b05f81e0aad6e';
  String get TOKEN => _TOKEN;
  set TOKEN(String value) {
    _TOKEN = value;
    prefs.setString('ff_TOKEN', value);
  }

  String _SESSION = '8s8o1hjgii5g25jd9bgrn1mnt7';
  String get SESSION => _SESSION;
  set SESSION(String value) {
    _SESSION = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
