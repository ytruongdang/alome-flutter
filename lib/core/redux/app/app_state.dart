import 'package:meta/meta.dart';
import '../homeLive/home_live_state.dart';

class AppState {
  final String searchQuery;
  final HomeLiveState  homeLiveState;
  AppState({
    @required this.searchQuery,
    @required this.homeLiveState
  });

  factory AppState.initial() {
    return AppState(
      homeLiveState: HomeLiveState.initial(),
      searchQuery: null
    );
  }
}