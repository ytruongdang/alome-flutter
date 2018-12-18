import './app_state.dart';
import '../homeLive/home_live_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return new AppState(
    homeLiveState: homeReducer(state.homeLiveState, action),
    searchQuery: null,
  );
}