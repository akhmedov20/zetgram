import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';


class FollowButtonWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  final double width;
  final Color color;
  final Color textColor;
  final Color borderColor;
  const FollowButtonWidget({Key? key, required this.text, required this.onTap, required this.width, required this.color, required this.textColor,required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: ScreenUtil().setHeight(57),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.5),
            color: color,
          border: Border.all(color: borderColor,width: 1.0)
        ),
        child: Center(
          child: Text(text,style: GoogleFonts.nunitoSans(
              textStyle: AppStyle.eighteen(textColor)
          ),).tr(),
        ),
      ),
    );
  }
}
