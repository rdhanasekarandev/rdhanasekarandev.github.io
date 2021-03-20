import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:karkai_web/network/fetch_data/fetch_model.dart';

abstract class FetchState extends Equatable {
  const FetchState();

  @override
  List<Object> get props => [];
}

class FetchEmpty extends FetchState {}

class FetchLoading extends FetchState {}

class FetchError extends FetchState {}

class FetchLoaded extends FetchState {
  final Fetch fetch;

  const FetchLoaded({@required this.fetch}) : assert(fetch != null);

  @override
  List<Object> get props => [fetch];
}
