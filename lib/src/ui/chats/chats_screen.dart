import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/ui/chats/chat_room/chat_room_screen.dart';
import 'package:zet_gram/src/widgets/chats_widget/chats_widget.dart';
import 'package:zet_gram/src/widgets/dismissible_widget/dismissible_widget.dart';

import '../../ui_models/post_model/post_model.dart';
import '../../widgets/textstyle_widget/textstyle_widget.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ChatsScreenState();
  }
}

class _ChatsScreenState extends State<ChatsScreen> {
  List<PostModel> _items = [
    PostModel(profile: "assets/images/messi.jpg",
        username: "leomessi",
        name: "Leo Messi", post: "I’m at the office right now.", postPicture: "", likes: 0, likes2: 2, comments: 0, hour: 0),
    PostModel(profile: "assets/images/cristiano.jpg",
        username: "cristiano",
        name: "Cristiano Ronaldo", post: "It’s pretty cheap I think and so ...", postPicture: "", likes: 0, likes2: 4, comments: 0, hour: 0),
    PostModel(profile: "assets/images/shakira.jpg",
        username: "shakira",
        name: "Shakira", post: "I’m okay, how about you?", postPicture: "", likes: 0, likes2: 5, comments: 0, hour: 0),
    PostModel(profile: "assets/images/fcb.jpg",
        username: "fcbayern",
        name: "FC Bayern", post: "Maybe I can help you tomorrow or Maybe I can help you tomorrow or ...", postPicture: "", likes: 0, likes2: 0, comments: 0, hour: 0),
    PostModel(profile: "assets/images/lewa.jpg",
        username: "_rl9",
        name: "Robert Lewandowski", post: "Yes of course, I like that very much!", postPicture: "", likes: 0, likes2: 5, comments: 0, hour: 0),
    PostModel(profile: "assets/images/433.jpg",
        username: "433",
        name: "433", post: "Can your friends do it tonight?", postPicture: "", likes: 0, likes2: 0, comments: 0, hour: 0),
    PostModel(profile: "assets/images/becks.jpg",
        username: "davidbeckham",
        name: "David Beckham", post: "Can your friends do it tonight?", postPicture: "", likes: 0, likes2: 10, comments: 0, hour: 0),
    PostModel(profile: "assets/images/messi.jpg",
        username: "leomessi",
        name: "Leo Messi", post: "I’m at the office right now.", postPicture: "", likes: 0, likes2: 0, comments: 0, hour: 0),
    PostModel(profile: "assets/images/cristiano.jpg",
        username: "cristiano",
        name: "Cristiano Ronaldo", post: "It’s pretty cheap I think and so ...", postPicture: "", likes: 0, likes2: 0, comments: 0, hour: 0),
    PostModel(profile: "assets/images/shakira.jpg",
        username: "shakira",
        name: "Shakira", post: "I’m okay, how about you?", postPicture: "", likes: 0, likes2: 0, comments: 0, hour: 0),
    PostModel(profile: "assets/images/fcb.jpg",
        username: "fcbayern",
        name: "FC Bayern", post: "Maybe I can help you tomorrow or Maybe I can help you tomorrow or ...", postPicture: "", likes: 0, likes2: 7, comments: 0, hour: 0),
    PostModel(profile: "assets/images/lewa.jpg",
        username: "_rl9",
        name: "Robert Lewandowski", post: "Yes of course, I like that very much!", postPicture: "", likes: 0, likes2: 0, comments: 0, hour: 0),
    PostModel(profile: "assets/images/433.jpg",
        username: "433",
        name: "433", post: "Can your friends do it tonight?", postPicture: "", likes: 0, likes2: 0, comments: 0, hour: 0),
    PostModel(profile: "assets/images/becks.jpg",
        username: "davidbeckham",
        name: "David Beckham", post: "Can your friends do it tonight?", postPicture: "", likes: 0, likes2: 0, comments: 0, hour: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: ScreenUtil().setHeight(40),),
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(CupertinoIcons.arrow_left)),
                SizedBox(width: ScreenUtil().setWidth(10),),
                Text("chats_text",style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.twentyfourbold(Colors.black)
                ),).tr(),
                Spacer(),
                IconButton(onPressed: (){
                }, icon: Icon(Icons.more_vert))
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(30),),
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  // Each Dismissible must contain a Key. Keys allow Flutter to uniquely
                  // identify Widgets.
                  return DismissibleWidget(
                    item: _items,
                    child: ChatsWidget(profile: _items[index].profile, name: _items[index].name,
                      username: _items[index].post, num: _items[index].likes2, onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ChatRoomScreen(profile: _items[index].profile, name: _items[index].name, username: _items[index].username.toString());
                        }));
                      },),
                  );
                },
              ),
            ),
          ],
        )
      ),
    );
  }
}