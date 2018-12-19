import 'package:redux/redux.dart';
import 'package:http/http.dart';
import 'package:key_value_store/key_value_store.dart';
import './app/app_state.dart';
import './app/app_reducer.dart';
import './homeLive/home_live_middleware.dart';
import '../api/api.dart';

Store<AppState> createStore(Client client, KeyValueStore keystoreValue) {
  final api = CoreApi(client);
  return Store(
    appReducer,
    initialState: AppState.initial(),
    middleware: [
      HomeLiveMiddleware(api)
    ]
  );
}