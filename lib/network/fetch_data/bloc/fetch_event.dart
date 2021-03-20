import 'package:equatable/equatable.dart';

abstract class NetworkEvent extends Equatable{
  const NetworkEvent();
}

class FetchEvent extends NetworkEvent{
  const FetchEvent();

  @override
  List<Object> get props => [];

}