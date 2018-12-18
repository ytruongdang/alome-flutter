import 'package:meta/meta.dart';
import '../../../model/live.dart';
import '../../../model/loading_status.dart';
class HomeLiveState {
  final LoadingStatus loadingStatus;
  final Live live;
  HomeLiveState({
    @required this.loadingStatus,
    @required this.live
  });

  factory HomeLiveState.initial() {
    return HomeLiveState(live: null, loadingStatus: LoadingStatus.idle);
  }

  HomeLiveState copyWith({
    LoadingStatus loadingStatus,
    Live live
  }) {
    return HomeLiveState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      live: live ?? this.live
    );
  }

  bool operator == (Object other) => 
    identical(this, other) || 
      other is HomeLiveState &&
        loadingStatus == other.loadingStatus &&
        live == other.live;

  int get hashCode => loadingStatus.hashCode ^ live.hashCode;

}