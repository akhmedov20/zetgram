import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/dialogs/bottom_dialogs/login_dialog.dart';
import 'package:zet_gram/src/widgets/buttons/onBoarding_button_widget.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';
import 'package:zet_gram/src/widgets/upload_widgets/upload_widgets.dart';


class UploadDialog {
  static void uploaddialog(BuildContext context) {
    bool tap = false;
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        isDismissible: true,
        context: context,
        builder: (BuildContext context) {
      return StatefulBuilder(builder: (ctx,setState){
        return SizedBox(
            height: ScreenUtil().setHeight(350),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
              child: Column(
                children: [
                  SizedBox(height: ScreenUtil().setHeight(50),),
                  UploadImgWidget(),
                  SizedBox(height: ScreenUtil().setHeight(40),),
                  OnBoardingButtonWidget(text: "button_2", onTap: (){
                    UploadDialog.captiondialog(context);
                  }, width: MediaQuery.of(context).size.width)
                ],
              ),
            )
        );
      });
    });
  }
  static void captiondialog(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        context: context, builder: (BuildContext context) {
      return SizedBox(
          height: ScreenUtil().setHeight(450),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: ScreenUtil().setHeight(50),),
                Text("write_a_caption",style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.twenty(Colors.black)
                ),).tr(),
                Form(
                  child: TextFormField(
                    validator: (val) => val == "" ? "Please write email" : "bsjbskbh",
                    style: GoogleFonts.nunitoSans(
                      textStyle: AppStyle.sixteenbold(Colors.black)
                    ),
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'enter_your_caption'.tr()
                    ),
                  ),
                ),
                SizedBox(height: ScreenUtil().setHeight(40),),
                OnBoardingButtonWidget(text: "upload_text", onTap: (){
                  if (_controller.text.isEmpty){
                    UploadDialog.uploadcaptionddialog(context);
                  }
                  else {
                    Navigator.pop(context);
                  }
                }, width: MediaQuery.of(context).size.width)
              ],
            ),
          )
      );
    });
  }
  static void uploadcaptionddialog (BuildContext context){
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        context: context, builder: (BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: ScreenUtil().setHeight(387),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(200),
            topRight: Radius.circular(200),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
          SizedBox(height: ScreenUtil().setHeight(60)),
          SvgPicture.asset("assets/icons/failed.svg"),
          SizedBox(height: ScreenUtil().setHeight(25)),
          Text("upload_failed",
            textAlign: TextAlign.center,style: AppStyle.twentyfourbold(Colors.black),).tr(),
          SizedBox(height: ScreenUtil().setHeight(25)),
          SizedBox(
              width: ScreenUtil().setWidth(300),
              child: Text("upload_failed2",
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
}