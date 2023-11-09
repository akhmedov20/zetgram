import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zet_gram/src/widgets/buttons/onBoarding_button_widget.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';


class LoginDialog{
  static void logindialog (BuildContext context){
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: ScreenUtil().setHeight(487),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(200),
            topRight: Radius.circular(200),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
          SizedBox(height: ScreenUtil().setHeight(80)),
          SvgPicture.asset("assets/icons/failed.svg"),
          SizedBox(height: ScreenUtil().setHeight(45)),
          Text("dialog_1",style: AppStyle.twentyfourbold(Colors.black),).tr(),
          SizedBox(height: ScreenUtil().setHeight(20)),
          SizedBox(
            width: ScreenUtil().setWidth(300),
              child: Text("dialog_2",
                textAlign: TextAlign.center,style: AppStyle.twelve(Color(0xFF252B5C)),).tr()),
          Spacer(),
          OnBoardingButtonWidget(text: "dialog_3", onTap: (){
            Navigator.pop(context);
          }, width: ScreenUtil().setWidth(350)),
          SizedBox(height: ScreenUtil().setHeight(50)),
        ],),
      );
    });
  }
  static void passworddialog (BuildContext context){
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: ScreenUtil().setHeight(487),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(200),
            topRight: Radius.circular(200),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
          SizedBox(height: ScreenUtil().setHeight(80)),
          SvgPicture.asset("assets/icons/failed.svg"),
          SizedBox(height: ScreenUtil().setHeight(45)),
          Text("dialog_4",style: AppStyle.twentyfourbold(Colors.black),).tr(),
          SizedBox(height: ScreenUtil().setHeight(20)),
          SizedBox(
              width: ScreenUtil().setWidth(300),
              child: Text("dialog_5",
                textAlign: TextAlign.center,style: AppStyle.twelve(Color(0xFF252B5C)),).tr()),
          Spacer(),
          OnBoardingButtonWidget(text: "dialog_6", onTap: (){
            Navigator.pop(context);
          }, width: ScreenUtil().setWidth(350)),
          SizedBox(height: ScreenUtil().setHeight(50)),
        ],),
      );
    });
  }
}