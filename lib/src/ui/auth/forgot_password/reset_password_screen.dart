import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart' hide Trans;
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/ui/auth/auth_screen.dart';
import 'package:zet_gram/src/widgets/buttons/onBoarding_button_widget.dart';
import 'package:zet_gram/src/widgets/textForm_simple_widget/textFormPassword.dart';

import '../../../dialogs/bottom_dialogs/login_dialog.dart';
import '../../../widgets/textstyle_widget/textstyle_widget.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  var resetController = TextEditingController();
  var resetController2 = TextEditingController();

  var isObsecure_sign  = true.obs;
  var isObsecure_sign2  = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(20),right: ScreenUtil().setWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenUtil().setHeight(40),),
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(CupertinoIcons.arrow_left)),
                  SizedBox(width: ScreenUtil().setWidth(15)),
                  Text("reset_password",style: GoogleFonts.nunitoSans(
                      textStyle: AppStyle.eighteen(Colors.black)
                  ),).tr(),
                  SizedBox(height: ScreenUtil().setHeight(40),),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(60),),
              Center(
                child: Container(
                  width: ScreenUtil().setWidth(64),
                  height: ScreenUtil().setHeight(64),
                  decoration: BoxDecoration(
                      color: Color(0xff327FEB),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: SvgPicture.asset("assets/icons/zet_logo2.svg",
                      width: ScreenUtil().setWidth(31),
                      height: ScreenUtil().setHeight(31),
                    ),
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(40),),
              SizedBox(
                height: ScreenUtil().setHeight(78),
                child: Text("reset_password2",
                  style: GoogleFonts.nunitoSans(
                      textStyle: AppStyle.seventeen(Colors.black)
                  ),).tr(),
              ),
              SizedBox(height: ScreenUtil().setHeight(52),),
              Text("on_board2_text",style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.sixteenbold(Colors.black)
              ),).tr(),
              SizedBox(height: ScreenUtil().setHeight(25),),
              TextFormPassword(controller: resetController2, text: "", hintText: "please_enter_your_password"),
              SizedBox(height: ScreenUtil().setHeight(52),),
              Text("confirm_password",style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.sixteenbold(Colors.black)
              ),).tr(),
              SizedBox(height: ScreenUtil().setHeight(25),),
              TextFormPassword(controller: resetController, text: "", hintText: "please_enter_your_password"),
              SizedBox(height: ScreenUtil().setHeight(45),),
              OnBoardingButtonWidget(text: "reset_button", onTap: (){
                // if (resetController.text.isEmpty){
                //   return LoginDialog.passworddialog(context);
                // }
                // else {
                //
                // }
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AuthScreen();
                }));
              }, width: MediaQuery.of(context).size.width)
            ],
          ),
        ),
      ),
    );
  }
}
