import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

class ChatsWidget extends StatelessWidget {
  final String profile;
  final String name;
  final String username;
  final int num;
  final Function() onTap;
  const ChatsWidget({Key? key, required this.profile, required this.name, required this.username, required this.num, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(10)),
        width: MediaQuery.of(context).size.width,
        height: ScreenUtil().setHeight(52),
        child: Row(
          children: [
            SizedBox(width: ScreenUtil().setWidth(25),),
            ClipRRect(
              borderRadius: BorderRadius.circular(52),
              child: Image.asset(profile,
              width: ScreenUtil().setWidth(52),
                height: ScreenUtil().setHeight(52),
              ),
            ),
            SizedBox(width: ScreenUtil().setWidth(15),),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.sixteenbold(Colors.black)
                ),),
                Text(username,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.fourteen(Colors.black)
                ),)
              ],
            )),
            SizedBox(width: ScreenUtil().setWidth(15),),
            Container(
              width: ScreenUtil().setWidth(24),
              height: ScreenUtil().setHeight(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.blue
              ),
              child: Center(
                child: Text(num.toString(),style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.fourteen(Colors.white)
                ),),
              ),
            ),
            SizedBox(width: ScreenUtil().setWidth(15),),
          ],
        ),
      ),
    );
  }
}
