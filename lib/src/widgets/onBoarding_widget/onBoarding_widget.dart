import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zet_gram/src/widgets/buttons/onBoarding_button_widget.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

class OnBoardingWidget extends StatelessWidget {
  final String img;
  final String text;
  final String text2;
  const OnBoardingWidget({Key? key, required this.img, required this.text, required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: ScreenUtil().setHeight(458),
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(75)
                ),
                child: Image.asset(img,fit: BoxFit.cover,)),
          ),
          SizedBox(height: ScreenUtil().setHeight(50),),
          Text(text,style: GoogleFonts.nunitoSans(
            textStyle: AppStyle.twentyfourbold(Colors.black)
          )).tr(),
          SizedBox(height: ScreenUtil().setHeight(16),),
          Container(
            margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
            width: MediaQuery.of(context).size.width,
            child: Text(text2,
                textAlign: TextAlign.center,style: GoogleFonts.nunitoSans(
                textStyle: AppStyle.sixteen(Colors.black)
            )).tr(),
          ),
          SizedBox(height: ScreenUtil().setHeight(59),),

        ],
      ),
    );
  }
}
