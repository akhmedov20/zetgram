import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/utils.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:zet_gram/src/ui_models/stories_model/story_model.dart';
import 'package:zet_gram/src/ui_models/stories_model/users.dart';
import 'package:zet_gram/src/widgets/stories_widget/profile_widget.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

import '../../ui_models/stories_model/stories_model.dart';

class StoryWidget extends StatefulWidget {
  final User user;
  final PageController controller;
  const StoryWidget({Key? key, required this.user, required this.controller}) : super(key: key);

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  final storyItems = <StoryItem>[];
  StoryController controller = StoryController();
  String date = "";

  void addStoryItems() {
    for (final story in widget.user.stories){
      switch (story.mediaType){
        case MediaType.image:
          storyItems.add(
            StoryItem.pageImage(
                url: story.url,
                imageFit: BoxFit.cover,
                controller: controller,
              caption: story.caption,
              duration: Duration(
                milliseconds: (story.duration * 1000).toInt()
              )
            )
          );
          break;
        case MediaType.text:
          storyItems.add(
            StoryItem.text(
                title: story.caption,
                backgroundColor: story.color,
              duration: Duration(
                milliseconds: (story.duration * 1000).toInt()
              )
            )
          );
          break;
      }
    }
  }

  @override
  void initState() {
    super.initState();
    controller = StoryController();
    addStoryItems();
    date = widget.user.stories[0].date;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void handleCompleted() {
    widget.controller.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn
    );

    final currentIndex = users.indexOf(widget.user);
    final isLastPage = users.length - 1 == currentIndex;

    if (isLastPage){
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
        Material(
          type: MaterialType.transparency,
          child: StoryView(
            storyItems: storyItems,
            controller: controller,
            onComplete: handleCompleted,
            onVerticalSwipeComplete: (direction){
              if (direction == Direction.down) {
                Navigator.pop(context);
              }
            },
            onStoryShow: (storyItem) {
              final index = storyItems.indexOf(storyItem);

              if( index > 0 ){
                setState(() {
                  date = widget.user.stories[index].date;
                });
              }

            },
          ),
        ),
        ProfileWidget(
          user: widget.user,
          date: date,
        ),
      ],
    );
  }
}
