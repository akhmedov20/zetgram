import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

class NotificationsWidget extends StatelessWidget {
  final String img;
  final String name;
  final String function;
  final String time;
  final int time2;
  final String comment;
  const NotificationsWidget({Key? key, required this.img, required this.name, required this.function, required this.time, required this.time2, required this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(10)),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(62),
            child: Image.asset(
              img,
              width: ScreenUtil().setWidth(62),
              height: ScreenUtil().setHeight(62),
            ),
          ),
          SizedBox(width: ScreenUtil().setWidth(16),),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(name + " ",style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.fourteenbold(Colors.black)
                  ),),
                  Text(function,style: GoogleFonts.nunitoSans(
                      textStyle: AppStyle.fourteen(Colors.grey)
                  ),).tr(),
                  SizedBox(width: ScreenUtil().setWidth(10),),
                  Text(time2.toString()+" "+time,style: GoogleFonts.nunitoSans(
                      textStyle: AppStyle.fourteen(Colors.grey)
                  ),),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              SizedBox(
                width: ScreenUtil().setWidth(210),
                child: Text("in_a_comment "+comment,style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.fourteen(Colors.black)
                ),).tr(),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
