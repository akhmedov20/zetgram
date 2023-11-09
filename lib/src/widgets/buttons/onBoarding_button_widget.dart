import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';


class OnBoardingButtonWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  final double width;
  const OnBoardingButtonWidget({Key? key, required this.text, required this.onTap, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: ScreenUtil().setHeight(57),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28.5),
          color: Color(0xff327FEB)
        ),
        child: Center(
          child: Text(text,style: GoogleFonts.nunitoSans(
            textStyle: AppStyle.eighteen(Colors.white)
          ),).tr(),
        ),
      ),
    );
  }
}
