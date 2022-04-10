import 'package:flutter/material.dart';

class ChatModel {
  String duration;
  String time;
  String location;
  List<StatelessWidget> convo;
  bool isNew = false;

  ChatModel(this.duration, this.time, this.location, this.convo);

  ChatModel.isNewChat(this.duration, this.time, this.location, this.convo,
      {this.isNew = true});
}
