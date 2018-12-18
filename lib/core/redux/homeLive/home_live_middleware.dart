import 'dart:async';
import 'package:redux/redux.dart';
import '../app/app_state.dart';
import '../_common/common_action.dart';
import '../../../model/action_type.dart';
import '../../../model/live.dart';
import './home_live_action.dart';
import '../../api/api.dart';

class HomeLiveMiddleware extends MiddlewareClass<AppState> {
  final CoreApi api;
  HomeLiveMiddleware(this.api);
  Future<void> call(Store<AppState> store,dynamic action,NextDispatcher next) async {
    next(action);
    final live = store.state.homeLiveState.live;
    if(action is FetchHomePageAction) {
      print("call Middleware");
      await _fetchLive(live, next);
    }
  }

  Future<void> _fetchLive(Live live, NextDispatcher next) async {
    if(live == null) {
      print('the deo nao ${live}');
      next(RequestAction(ActionType.GetLive));
      try {
        final liveRes = await api.getLive(live);
        next(ReceivedLiveAction(liveRes));
      } catch(e) {
        next(ErrorLoadingAction(ActionType.GetLive));
      }
    }
  }

}