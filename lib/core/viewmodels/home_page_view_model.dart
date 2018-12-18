import 'package:redux/redux.dart';
import '../../model/loading_status.dart';
import '../redux/app/app_state.dart';
import '../../model/action_type.dart';
import '../../model/live.dart';
import 'package:meta/meta.dart';

class HomePageViewModel {
  HomePageViewModel({
    @required this.status,
    @required this.live,
  });

  final LoadingStatus status;
  final Live live;
  // final Function refreshEvents;

  static HomePageViewModel fromStore(
    Store<AppState> store,
    ActionType type,
  ) {
    return HomePageViewModel(
      status: store.state.homeLiveState.loadingStatus,
      live: store.state.homeLiveState.live
    );
  }  

  bool operator == (Object other) => 
    identical(this, other) ||
    other is HomePageViewModel &&
    runtimeType == other.runtimeType &&
    status == other.status &&
    live == other.live;

  int get hashCode => status.hashCode ^ live.hashCode;

}