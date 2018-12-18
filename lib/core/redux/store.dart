import 'package:redux/redux.dart';
import 'package:http/http.dart';
import 'package:key_value_store/key_value_store.dart';
import './app/app_state.dart';
import './app/app_reducer.dart';

Store<AppState> createStore(Client client, KeyValueStore keystoreValue) {
  return Store(
    appReducer,
    initialState: AppState(),
    distinct: true
  );
}