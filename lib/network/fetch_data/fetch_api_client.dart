import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:karkai_web/network/fetch_data/fetch_model.dart';
import 'package:karkai_web/utils/url.dart';
import 'package:http/http.dart' as http;

class FetchApiClient {
  final _baseUrl = AppUrl.BASE_URL;

  final http.Client httpClient;

  FetchApiClient({@required this.httpClient}) : assert(httpClient != null);

  Future<Fetch> fetchData() async {
    var url = Uri.https(_baseUrl, '/posts/1');
    final response = await this.httpClient.get(url);
    print('${response.body.toString()}');

    if (response.statusCode != 200) {
      throw new Exception('error getting quotes');
    }

    final json = jsonDecode(response.body);
    return Fetch.fromJson(json);
  }
}
