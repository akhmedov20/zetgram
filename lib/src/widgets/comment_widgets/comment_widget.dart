import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

class CommentWidget extends StatelessWidget {
  final String profile;
  final String name;
  final String comment;
  const CommentWidget({Key? key, required this.profile, required this.name, required this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(10),horizontal: ScreenUtil().setHeight(20)),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(width: ScreenUtil().setWidth(20),),
          ClipRRect(
            borderRadius: BorderRadius.circular(38),
            child: Image.asset(profile,
            width: ScreenUtil().setWidth(36),
              height: ScreenUtil().setHeight(36),
            ),
          ),
          SizedBox(width: ScreenUtil().setWidth(20),),
          Expanded(child: RichText(
            text: TextSpan(
              text: name + " ",
              style: GoogleFonts.nunitoSans(
                textStyle: AppStyle.sixteenbold(Colors.black)
              ),
              children: [
                TextSpan(text: comment, style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.thirteen(Colors.black)
                )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
