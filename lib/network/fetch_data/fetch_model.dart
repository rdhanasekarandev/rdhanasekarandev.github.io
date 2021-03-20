import 'package:equatable/equatable.dart';

class Fetch extends Equatable{

  final id;
  final int userId;
  final String title;
  final String body;

  const Fetch({this.id,this.userId,this.title,this.body});

  @override
  List<Object> get props => [id,userId,title,body];

  static Fetch fromJson(dynamic json){
    return Fetch(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body']
    );
  }

  @override
  String toString() => 'Fetch id: ${id}';

}