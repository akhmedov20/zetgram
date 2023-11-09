

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/dialogs/bottom_dialogs/comment_dialog.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

class PostWidget extends StatefulWidget {
  final String profile;
  final String name;
  final String post;
  final String postPicture;
  final int likes;
  final int likes2;
  final int comments;
  final int hour;
  final Function() ? ontap;
  const PostWidget({Key? key, required this.profile, this.ontap, required this.name, required this.post, required this.likes, required this.comments, required this.hour, required this.postPicture, required this.likes2}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool _onPress = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        margin: EdgeInsets.only(top: ScreenUtil().setHeight(8),bottom: ScreenUtil().setHeight(8)),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0x0C929292),
              blurRadius: 75,
              offset: Offset(0, 10),
              spreadRadius: 0,
            )
          ]
        ),
        child: Padding(
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(15),right: ScreenUtil().setWidth(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenUtil().setHeight(17),),
              Row(
                children: [
                  Container(
                    width: ScreenUtil().setWidth(42),
                    height: ScreenUtil().setHeight(42),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(42),
                        child: Image.asset(widget.profile)),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(20),),
                  Text(widget.name,style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.sixteenbold(Colors.black)
                  ),),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(15),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
                width: MediaQuery.of(context).size.width,
                height: 1.5,
                color: Color(0xffA9A9A9),
              ),
              SizedBox(height: ScreenUtil().setHeight(20),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
                width: MediaQuery.of(context).size.width,
                child: Text(widget.post,
                style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.fourteen(Colors.black)
                ),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(20),),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(widget.postPicture,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                  height: ScreenUtil().setHeight(370),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(20),),
              Row(
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                      _onPress = !_onPress;
                    });
                  }, icon: Icon(_onPress ? Icons.favorite : Icons.favorite_outline,
                  color: _onPress ? Colors.red : Colors.grey,
                    size: ScreenUtil().setHeight(34),
                  )),
                  SizedBox(width: ScreenUtil().setWidth(10),),
                  Text(_onPress ? widget.likes.toString() : widget.likes2.toString(),style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.sixteen(Colors.grey)
                  ),),
                  SizedBox(width: ScreenUtil().setWidth(10),),
                  IconButton(onPressed: (){
                    CommentDialog.commentdialog(context);
                  }, icon: SvgPicture.asset("assets/icons/message.svg",color: Colors.grey,height:ScreenUtil().setHeight(30))),
                  Text(widget.comments.toString(),style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.sixteen(Colors.grey)
                  ),),
                  Spacer(),
                  Text(widget.hour.toString() +" "+"hours_ago_text".tr(),style: GoogleFonts.nunitoSans(
                      textStyle: AppStyle.sixteen(Colors.grey)
                  ),),
                  SizedBox(width: ScreenUtil().setWidth(10),),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(20),),
            ],
          ),
        ),
      ),
    );
  }
}
