import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

import '../../ui_models/stories_model/stories_model.dart';

class ProfileWidget extends StatelessWidget {
  final User user;
  final String date;
  const ProfileWidget({Key? key, required this.user, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16),
        vertical: ScreenUtil().setHeight(68)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(user.imgUrl),
            ),
            SizedBox(width: ScreenUtil().setWidth(16),),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.name,style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.sixteenbold(Colors.white)
                ),),
                Text(date,style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.fourteenbold(Colors.white)
                ),)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
