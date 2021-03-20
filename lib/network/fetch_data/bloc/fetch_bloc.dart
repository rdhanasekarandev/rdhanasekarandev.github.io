import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karkai_web/network/fetch_data/bloc/fetch_event.dart';
import 'package:karkai_web/network/fetch_data/bloc/fetch_state.dart';
import 'package:karkai_web/network/fetch_data/fetch_repository.dart';

import '../fetch_model.dart';

class FetchBloc extends Bloc<FetchEvent, FetchState> {
  final FetchRepository fetchRepository;

  FetchBloc({@required this.fetchRepository})
      : assert(fetchRepository != null),
        super(FetchEmpty());

  @override
  FetchState get initialState => FetchEmpty();

  @override
  Stream<FetchState> mapEventToState(FetchEvent event) async* {
    if (event is FetchEvent) {
      yield FetchLoading();
      try {
        final Fetch fetch = await fetchRepository.fetchData();
        print('$fetch');
        yield FetchLoaded(fetch: fetch);
      } catch (e) {
        print(e);
        yield FetchError();
      }
    }
  }
}
