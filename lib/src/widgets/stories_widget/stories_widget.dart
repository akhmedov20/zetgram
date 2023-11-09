import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

class StoriesWidget extends StatelessWidget {
  final BoxDecoration decoration;
  final String name;
  final String img;
  final Function()? onTap;
  const StoriesWidget({Key? key, required this.decoration, required this.name, required this.img, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
        width: ScreenUtil().setWidth(67),
        height: ScreenUtil().setHeight(100),
        child: Column(
          children: [
            Container(
              width: ScreenUtil().setWidth(67),
              height: ScreenUtil().setHeight(70),
              decoration: decoration,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                  child: Image.asset(img,fit: BoxFit.cover,)),
            ),
            SizedBox(height: ScreenUtil().setHeight(10),),
            Text(name,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.nunitoSans(
              textStyle: AppStyle.thirteenbold(Colors.black)
            ),)
          ],
        ),
      ),
    );
  }
}
