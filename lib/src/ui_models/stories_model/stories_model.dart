import 'package:flutter/cupertino.dart';
import 'package:zet_gram/src/ui_models/stories_model/story_model.dart';

class StoriesModel {
  String name;
  String img;
  BoxDecoration decoration;

  StoriesModel({
    required this.decoration,required this.img,required this.name,
});
}

class User {
  final String name;
  final String imgUrl;
  final List<Story> stories;

  User({
    required this.name,required this.imgUrl,required this.stories
});
}