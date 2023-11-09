import 'package:flutter/material.dart';
import 'package:zet_gram/src/ui_models/stories_model/stories_model.dart';
import 'package:zet_gram/src/ui_models/stories_model/users.dart';

import '../../../widgets/stories_widget/story_widget.dart';

class StoriesScreen extends StatefulWidget {
  final User user;
  const StoriesScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    final initialPage = users.indexOf(widget.user);
    controller = PageController(initialPage: initialPage);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: users
      .map((user) => StoryWidget(
        user: user,
        controller: controller
      ))
        .toList()
    );
  }
}
