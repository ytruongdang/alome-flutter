// import '../../../model/live.dart';
import '../../../model/loading_status.dart';
import './home_live_state.dart';
import '../../../model/action_type.dart';
import './home_live_action.dart';

HomeLiveState homeReducer(HomeLiveState state, dynamic action) {
  if(action is RequestAction) {
    return _getLiveVideo(state, action.type);
  }else if(action is ReceivedLiveAction) {
    return state.copyWith(
      loadingStatus: LoadingStatus.success,
      live: action.live
    );
  }else if(action is ErrorLoadingAction) {
    return state.copyWith(
      loadingStatus: LoadingStatus.error,
    );
  }
  return state;
}

HomeLiveState _getLiveVideo(HomeLiveState state, ActionType type) {
  final status = LoadingStatus.loading;
  return state.copyWith(loadingStatus: status);
}