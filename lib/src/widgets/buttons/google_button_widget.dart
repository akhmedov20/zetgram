import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';


class GoogleButtonWidget extends StatelessWidget {
  final String text;
  final String svg;
  final Function() onTap;
  final double width;
  final Color color;
  final Color Containercolor;
  const GoogleButtonWidget({Key? key, required this.text, required this.onTap, required this.width, required this.svg, required this.color, required this.Containercolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: ScreenUtil().setHeight(57),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x26635757),
                blurRadius: 75,
                offset: Offset(0, 6),
                spreadRadius: 0,
              )
            ],
            borderRadius: BorderRadius.circular(28.5),
            color: Containercolor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(svg),
            SizedBox(width: ScreenUtil().setWidth(10),),
            Text(text,style: GoogleFonts.nunitoSans(
            textStyle: AppStyle.eighteen(color)
        )),
            
          ],
        ),
      ),
    );
  }
}
