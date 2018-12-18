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
  bool operator == (Object other) =>
    identical(this, other) ||
    other is AppState &&
      runtimeType == other.runtimeType &&
      searchQuery == other.searchQuery &&
      homeLiveState == other.homeLiveState;
  
  int get hashCode => searchQuery.hashCode ^ homeLiveState.hashCode;
}