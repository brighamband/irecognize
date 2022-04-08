import 'package:flutter/material.dart';

class ChatModel {
  String duration;
  String time;
  String location;
  List<StatelessWidget> convo;

  ChatModel(this.duration, this.time, this.location, this.convo);
}
