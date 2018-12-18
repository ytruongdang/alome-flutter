import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:key_value_store_flutter/key_value_store_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'ui/tabbar/TabbarInsideAppBar.dart';
import './core/core.dart';
import 'package:http/http.dart';

Future<void> main() async {
  final prefs = await SharedPreferences.getInstance();
  final keyStoreValue = FlutterKeyValueStore(prefs);
  final store = createStore(Client(), keyStoreValue);
  runApp(AlomeApp(store));
}

class AlomeApp extends StatefulWidget {
  AlomeApp(this.store);
  final Store<AppState> store;

  _AlomeAppState createState() => _AlomeAppState();
}

class _AlomeAppState extends State<AlomeApp> {
  void initState() {
    super.initState();
    widget.store.dispatch(InitAction());
  }

  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: MaterialApp(
        title: 'Alome',
        home: new TabbarInsideAppBar(),
    ),);
  }
}