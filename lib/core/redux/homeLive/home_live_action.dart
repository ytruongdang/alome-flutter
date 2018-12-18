import '../../../model/action_type.dart';
import '../../../model/live.dart';

class RequestAction {
  final ActionType type;
  RequestAction(this.type);
}

class ReceivedLiveAction {
  final Live live;
  ReceivedLiveAction(this.live);
}

class ErrorLoadingAction {
  ErrorLoadingAction(this.type);
  final ActionType type;
}
