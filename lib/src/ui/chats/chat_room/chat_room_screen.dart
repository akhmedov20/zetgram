import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:zet_gram/src/ui_models/message_model/message_model.dart';

import '../../../widgets/textstyle_widget/textstyle_widget.dart';

class ChatRoomScreen extends StatefulWidget {
  final String profile;
  final String name;
  final String username;
  const ChatRoomScreen({Key? key, required this.profile, required this.name, required this.username}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  TextEditingController _controller = TextEditingController();
  List<MessageModel> messages = [
    MessageModel(text: "Hey! Thank you for the coupons!",
        date: DateTime.now().subtract(Duration(days: 1, minutes: 1)),
        isSentByMe: false),
    MessageModel(text: "Your welcome!",
        date: DateTime.now().subtract(Duration(days: 1,minutes: 1)),
        isSentByMe: true),
    MessageModel(text: "Where are you at right now?",
        date: DateTime.now().subtract(Duration(days: 1,minutes: 1)),
        isSentByMe: false),
    MessageModel(text: "Thanks once again!",
        date: DateTime.now().subtract(Duration(days: 2,minutes: 1)),
        isSentByMe: true),
    MessageModel(text: "I’m at the office right now.",
        date: DateTime.now().subtract(Duration(days: 2,minutes: 1)),
        isSentByMe: false),
    MessageModel(text: "I’m at the office right now.",
        date: DateTime.now().subtract(Duration(days: 2,minutes: 1)),
        isSentByMe: true),
    MessageModel(text: "Hey! Thank you for the coupons!",
        date: DateTime.now().subtract(Duration(days: 3,minutes: 1)),
        isSentByMe: false),
    MessageModel(text: "Your welcome!",
        date: DateTime.now().subtract(Duration(days: 3,minutes: 1)),
        isSentByMe: true),
    MessageModel(text: "Where are you at right now?",
        date: DateTime.now().subtract(Duration(days: 4,minutes: 1)),
        isSentByMe: false),
    MessageModel(text: "Thanks once again!",
        date: DateTime.now().subtract(Duration(days: 6,minutes: 1)),
        isSentByMe: true),
    MessageModel(text: "I’m at the office right now.",
        date: DateTime.now().subtract(Duration(days: 6,minutes: 1)),
        isSentByMe: false),
    MessageModel(text: "I’m at the office right now.",
        date: DateTime.now().subtract(Duration(days: 6,minutes: 1)),
        isSentByMe: true),
  ].reversed.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: ScreenUtil().setHeight(30),),
            Container(
              child: Row(
                children: [
                  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(CupertinoIcons.arrow_left)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(52),
                    child: Image.asset(widget.profile,
                      width: ScreenUtil().setWidth(52),
                      height: ScreenUtil().setHeight(52),
                    ),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(20),),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name,style: GoogleFonts.nunitoSans(
                        textStyle: AppStyle.sixteenbold(Colors.black)
                      ),),
                      Text(widget.username,style: GoogleFonts.nunitoSans(
                          textStyle: AppStyle.fourteen(Colors.grey)
                      ),),
                    ],
                  ))
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(30),),
            Expanded(
                child: GroupedListView<MessageModel, DateTime>(
                  padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
                  reverse: true,
                  order: GroupedListOrder.DESC,
                  useStickyGroupSeparators: true,
                  floatingHeader: true,
                  elements: messages,
                  groupBy: (message) => DateTime(
                    message.date.year,
                    message.date.month,
                    message.date.day,
                  ),
                  groupHeaderBuilder: (MessageModel message) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    height: ScreenUtil().setHeight(50),
                    child: Center(
                      child: Card(
                        color: Theme.of(context).primaryColor,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16),
                              vertical: ScreenUtil().setHeight(8)),
                          child: Text(
                            DateFormat.yMMMd().format(message.date),
                            style: GoogleFonts.nunitoSans(
                              textStyle: AppStyle.sixteen(Colors.white)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  itemBuilder: (context,MessageModel message) => Align(
                    alignment: message.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.only(left: ScreenUtil().setWidth(20),
                          right: ScreenUtil().setWidth(20),top: ScreenUtil().setHeight(10)),
                      margin: EdgeInsets.only(right: ScreenUtil().setWidth(20),
                          top: ScreenUtil().setHeight(10),bottom: ScreenUtil().setHeight(10)  ),
                      height: ScreenUtil().setHeight(44),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,0.22)
                            )
                          ],
                          color: message.isSentByMe == true ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          ),
                        ),
                        child: Text(message.text,style: message.isSentByMe == true ?
                            GoogleFonts.nunitoSans(
                              textStyle: AppStyle.fourteenbold(Colors.white)
                            ): GoogleFonts.nunitoSans(
                                textStyle: AppStyle.fourteenbold(Colors.black)
                            )),
                        ),
                  ),
                )
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0x33A9A9A9),
                borderRadius: BorderRadius.circular(26)
              ),
              child: Row(
                children: [
                  SizedBox(width: ScreenUtil().setWidth(15),),
                  Icon(CupertinoIcons.smiley,size: ScreenUtil().setHeight(26),),
                  Expanded(
                    child: TextField(
                      style: AppStyle.sixteenbold(Colors.black),
                      controller: _controller,
                      onSubmitted: (text){
                        final message = MessageModel(
                            text: text,
                            date: DateTime.now(),
                            isSentByMe: true
                        );
                        setState(() {
                          messages.add(message);
                        });
                      },
                      decoration: InputDecoration(
                          hintText: ("chat_room_text" ?? '').tr(),
                          hintStyle: AppStyle.fourteen(Colors.grey),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
                      ),
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/send2.svg")),
                  SizedBox(width: ScreenUtil().setWidth(10),),
                ],
              )
            ),
            SizedBox(height: ScreenUtil().setHeight(20),),
          ],
        ),
      ),
    );
  }
}
