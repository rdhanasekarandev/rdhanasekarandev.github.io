import 'package:flutter/cupertino.dart';
import 'package:karkai_web/network/fetch_data/fetch_api_client.dart';
import 'package:karkai_web/network/fetch_data/fetch_model.dart';

class FetchRepository {
  final FetchApiClient fetchApiClient;

  FetchRepository({@required this.fetchApiClient})
      : assert(fetchApiClient != null);

  Future<Fetch> fetchData() async {
    return await fetchApiClient.fetchData();
  }
}
