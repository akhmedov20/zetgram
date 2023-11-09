import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/ui_models/comment_model/comment_model.dart';
import 'package:zet_gram/src/widgets/comment_widgets/comment_widget.dart';

import '../../widgets/buttons/onBoarding_button_widget.dart';
import '../../widgets/textstyle_widget/textstyle_widget.dart';

class CommentDialog {
  static void commentdialog (BuildContext context){
    TextEditingController _controller = TextEditingController();
    List <Comment> coms = [
      Comment(name: "Shakira", profile: "assets/images/shakira.jpg",
          comment: "Haha lol. That’s so easy to use and user friendly, go try again in a moment!"),
      Comment(name: "Cristiano Ronaldo", profile: "assets/images/cristiano.jpg",
          comment: "Haha lol. That’s so easy to use and user friendly, go try again in a moment!"),
      Comment(name: "FC Bayern", profile: "assets/images/fcb.jpg",
          comment: "Haha lol. That’s so easy to use and user friendly, go try again in a moment!"),
      Comment(name: "Leo Messi ", profile: "assets/images/messi.jpg",
          comment: "Haha lol. That’s so easy to use and user friendly, go try again in a moment!"),
      Comment(name: "Shakira", profile: "assets/images/shakira.jpg",
          comment: "Haha lol. That’s so easy to use and user friendly, go try again in a moment!"),
      Comment(name: "Shakira", profile: "assets/images/shakira.jpg",
          comment: "Haha lol. That’s so easy to use and user friendly, go try again in a moment!"),
      Comment(name: "Shakira", profile: "assets/images/shakira.jpg",
          comment: "Haha lol. That’s so easy to use and user friendly, go try again in a moment!"),
      Comment(name: "Shakira", profile: "assets/images/shakira.jpg",
          comment: "Haha lol. That’s so easy to use and user friendly, go try again in a moment!"),
      Comment(name: "Shakira", profile: "assets/images/shakira.jpg",
          comment: "Haha lol. That’s so easy to use and user friendly, go try again in a moment!"),
      Comment(name: "Shakira", profile: "assets/images/shakira.jpg",
          comment: "Haha lol. That’s so easy to use and user friendly, go try again in a moment!"),
    ];
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        context: context, builder: (BuildContext context){
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(40),),
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(30)),
              child: Text("comments_text",style: GoogleFonts.nunitoSans(
                textStyle: AppStyle.twenty(Colors.black)
              ),).tr(),
            ),
            SizedBox(height: ScreenUtil().setHeight(20),),
            Expanded(
              child: ListView.builder(
                  itemCount: coms.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,i){
                    return CommentWidget(profile: coms[i].profile, name: coms[i].name, comment: coms[i].comment);
                  }),
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
                        decoration: InputDecoration(
                          hintText: ("chat_room_text" ?? '').tr(),
                          hintStyle: AppStyle.fourteen(Colors.grey),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
                        ),
                      ),
                    ),
                    IconButton(onPressed: (){
                      if (_controller.text.isEmpty){
                        CommentDialog.commenterrordialog(context);
                      }
                      else {
                        CommentDialog.commentsuccesdialog(context);
                      }
                    }, icon: SvgPicture.asset("assets/icons/send2.svg")),
                    SizedBox(width: ScreenUtil().setWidth(10),),
                  ],
                )
            ),
            SizedBox(height: ScreenUtil().setHeight(20),),
          ],
        ),
      );
    });
  }
  static void commenterrordialog (BuildContext context){
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        context: context, builder: (BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: ScreenUtil().setHeight(387),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(200),
            topRight: Radius.circular(200),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
          SizedBox(height: ScreenUtil().setHeight(60)),
          SvgPicture.asset("assets/icons/failed.svg"),
          SizedBox(height: ScreenUtil().setHeight(25)),
          Text("comments_not_add",
            textAlign: TextAlign.center,style: AppStyle.twentyfourbold(Colors.black),).tr(),
          SizedBox(height: ScreenUtil().setHeight(25)),
          SizedBox(
              width: ScreenUtil().setWidth(300),
              child: Text("comments_not_add2",
                textAlign: TextAlign.center,style: AppStyle.twelve(Color(0xFF252B5C)),).tr()),
          Spacer(),
          OnBoardingButtonWidget(text: "dialog_3", onTap: (){
            Navigator.pop(context);
          }, width: ScreenUtil().setWidth(350)),
          SizedBox(height: ScreenUtil().setHeight(50)),
        ],),
      );
    });
  }
  static void commentsuccesdialog (BuildContext context){
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        context: context, builder: (BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: ScreenUtil().setHeight(387),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(200),
            topRight: Radius.circular(200),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
          SizedBox(height: ScreenUtil().setHeight(60)),
          SvgPicture.asset("assets/icons/success.svg"),
          SizedBox(height: ScreenUtil().setHeight(25)),
          Text("comments_add",
            textAlign: TextAlign.center,style: AppStyle.twentyfourbold(Colors.black),).tr(),
          SizedBox(height: ScreenUtil().setHeight(25)),
          SizedBox(
              width: ScreenUtil().setWidth(300),
              child: Text("comments_add2",
                textAlign: TextAlign.center,style: AppStyle.twelve(Color(0xFF252B5C)),).tr()),
          Spacer(),
          OnBoardingButtonWidget(text: "done_text", onTap: (){
            Navigator.pop(context);
          }, width: ScreenUtil().setWidth(350)),
          SizedBox(height: ScreenUtil().setHeight(50)),
        ],),
      );
    });
  }
}