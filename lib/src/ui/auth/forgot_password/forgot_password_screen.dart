import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/ui/auth/forgot_password/code_verification_screen.dart';
import 'package:zet_gram/src/widgets/buttons/onBoarding_button_widget.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';
import '../../../dialogs/bottom_dialogs/login_dialog.dart';
import '../../../widgets/textForm_simple_widget/textForm_email.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  TextEditingController textEditingController = TextEditingController();

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
                  Text("forgot_password_text",style: GoogleFonts.nunitoSans(
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
                child: Text("forgot_password_2",
                style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.seventeen(Colors.black)
                ),).tr(),
              ),
              SizedBox(height: ScreenUtil().setHeight(60),),
              Text("on_board_sign2",style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.sixteenbold(Colors.black)
              ),).tr(),
              SizedBox(height: ScreenUtil().setHeight(15),),
              TextFormEmail(controller: textEditingController,
                hintText: "on_board_text2", text: '',),
              SizedBox(height: ScreenUtil().setHeight(65),),
              OnBoardingButtonWidget(text: "continue_text", onTap: (){
                // if (textEditingController.text.isEmpty){
                //   return LoginDialog.logindialog(context);
                // }
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CodeVerification();
                }));
              }, width: MediaQuery.of(context).size.width)
            ],
          ),
        ),
      ),
    );
  }
}
