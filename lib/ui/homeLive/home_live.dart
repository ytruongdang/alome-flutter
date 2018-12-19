import 'package:flutter/material.dart';
// import '../components/audioLive.dart';
// import '../../model/message.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../../core/core.dart';
import '../../model/action_type.dart';
import '../common/loading_view.dart';
import '../common/progress_indicator.dart';
import '../common/info_message_view.dart';

class HomeLive extends StatelessWidget {

  final ActionType actionType;

  HomeLive(this.actionType);

  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomePageViewModel>(
      builder: (_, viewModel) => HomePageContent(viewModel, actionType),
      distinct: true,
      onInit: (store) => store.dispatch(FetchHomePageAction()),
      converter: (store) => HomePageViewModel.fromStore(store, actionType),
    ); 
  }

  // Widget build(BuildContext context) {
  //   return new Scaffold(
  //     body: new SingleChildScrollView(
  //       child: 
  //         new Container(
  //         decoration: new BoxDecoration(
  //           color: Colors.red
  //         ),
  //         child: new Column(
  //         children: <Widget>[
  //           new AudioLive(messages[0]),
  //           new Row(
  //             children: <Widget>[
  //               new Expanded(
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: <Widget>[
  //                     new Text('Cac cach lay long me chong(EP2)', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
  //                     new Row(
  //                       children: <Widget>[
  //                         new Icon(Icons.remove_red_eye, size: 12, color: Colors.white),
  //                         new Text('2.183 luot xem'),
  //                       ],
  //                     ),
  //                     new Row(
  //                       children: <Widget>[
  //                         new Icon(Icons.favorite, size: 12, color: Colors.white),
  //                         new Text('yeu thich'),
  //                       ],
  //                     )
  //                   ],
  //                 ),
  //               ),
  //               new Expanded(
  //                 child: Column(children: <Widget>[
  //                   new Text('tra loi cau hoi cua chuong trinh \n tich sao may man \n Nhan giai thuong hap dan'),
  //                   new Container(
  //                     padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
  //                     margin: EdgeInsets.only(left: 10.0, right: 10.0),
  //                     decoration: new BoxDecoration(
  //                       borderRadius: BorderRadius.all(const Radius.circular(15.0)),
  //                       color: Colors.yellow
  //                     ),
  //                     child: new Center(
  //                       child: new Row(
  //                         mainAxisSize: MainAxisSize.max,
  //                         mainAxisAlignment: MainAxisAlignment.center,
  //                         children: <Widget>[
  //                           new Icon(Icons.send, size: 14, color: Colors.white),
  //                           new Text('TRA LOI CAU HOI', style: TextStyle(color: Colors.white, fontSize: 14))
  //                         ],
  //                       ),
  //                     )
  //                   )
  //                 ],),
  //               )
  //             ],
  //           )
  //         ],
  //       ),
  //       )
  //     )
  //   );
  // }
}

class HomePageContent extends StatelessWidget {
  final HomePageViewModel viewModel;
  final ActionType actionType;
  HomePageContent(this.viewModel, this.actionType);
  Widget build(BuildContext context) {
    print(viewModel.status);
    print(actionType);
    return LoadingView(
      status: viewModel.status,
      loadingContent: LoadingIndicator(),
      successContent: Container(color: Colors.blueAccent,),
      errorContent: ErrorView(
        title: 'Opps',
        description: 'can not get content',
        onRetry: viewModel.refreshEvents,
      )
    );
  }
}