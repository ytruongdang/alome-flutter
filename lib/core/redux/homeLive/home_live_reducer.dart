// import '../../../model/live.dart';
import '../../../model/loading_status.dart';
import './home_live_state.dart';
import '../../../model/action_type.dart';
import './home_live_action.dart';

HomeLiveState homeReducer(HomeLiveState state, dynamic action) {
  if(action is RequestAction) {
    return _getLiveVideo(state, action.type);
  }
  return state;
}

HomeLiveState _getLiveVideo(HomeLiveState state, ActionType type) {
  final status = LoadingStatus.loading;
  return state.copyWith(loadingStatus: status);
}