import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

class SearchWidget extends StatelessWidget {
  final String img;
  final String name;
  final String username;
  final Function() ? onTap;
  const SearchWidget({Key? key, required this.img, required this.name, required this.username,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: ScreenUtil().setHeight(8),bottom: ScreenUtil().setHeight(8)),
        width: MediaQuery.of(context).size.width,
        height: ScreenUtil().setHeight(62),
        child: Row(
          children: [
            SizedBox(width: ScreenUtil().setWidth(16),),
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
              Text(name,style: GoogleFonts.nunitoSans(
                textStyle: AppStyle.sixteenbold(Colors.black)
              ),),
              Text("@"+ username,style: GoogleFonts.nunitoSans(
                textStyle: AppStyle.fourteen(Colors.grey)
              ),),
            ],))
          ],
        ),
      ),
    );
  }
}
