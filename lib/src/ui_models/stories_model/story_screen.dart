import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/ui/home/stories/stories_screen.dart';
import 'package:zet_gram/src/ui_models/stories_model/users.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

import '../../widgets/stories_widget/stories_widget.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
        children: users
            .map((user) => StoriesWidget(decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 3,color: const Color(0xff327FEB))
        ),
            name: user.name,
            img: user.imgUrl,
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return StoriesScreen(user: user,);
            }));
          },
        ),)
            .toList()
    );
  }
}
