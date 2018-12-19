import 'package:redux/redux.dart';
import '../../model/loading_status.dart';
import '../redux/app/app_state.dart';
import '../../model/action_type.dart';
import '../../model/live.dart';
import 'package:meta/meta.dart';
import '../redux/homeLive/home_live_action.dart';

class HomePageViewModel {
  HomePageViewModel({
    @required this.status,
    @required this.live,
    @required this.refreshEvents
  });

  final LoadingStatus status;
  final Live live;
  final Function refreshEvents;

  static HomePageViewModel fromStore(
    Store<AppState> store,
    ActionType type,
  ) {
    return HomePageViewModel(
      status: store.state.homeLiveState.loadingStatus,
      live: store.state.homeLiveState.live,
      refreshEvents: () => store.dispatch(RefreshHomeLiveAction(type))
    );
  }  

  bool operator == (Object other) => 
    identical(this, other) ||
    other is HomePageViewModel &&
    runtimeType == other.runtimeType &&
    status == other.status &&
    refreshEvents == other.refreshEvents &&
    live == other.live;

  int get hashCode => status.hashCode ^ live.hashCode ^ refreshEvents.hashCode;

}