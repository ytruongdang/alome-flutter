import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';
import '../../model/live.dart';

class CoreApi {
  static final baseUrl = 'https://api.zlive.tv';
  final Client client;

  CoreApi(
    this.client
  );

  Future<Live> getLive(Live live) async {
    final response = await client.get(baseUrl);
    print(response);
    return live.fromJson(json.decode(response.body));
  }

}