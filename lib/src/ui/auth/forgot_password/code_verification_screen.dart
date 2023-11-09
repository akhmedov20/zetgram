import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:zet_gram/src/ui/auth/forgot_password/reset_password_screen.dart';

import '../../../dialogs/bottom_dialogs/login_dialog.dart';
import '../../../widgets/buttons/onBoarding_button_widget.dart';
import '../../../widgets/textstyle_widget/textstyle_widget.dart';

class CodeVerification extends StatefulWidget {
  const CodeVerification({Key? key}) : super(key: key);

  @override
  State<CodeVerification> createState() => _CodeVerificationState();
}

class _CodeVerificationState extends State<CodeVerification> {
  final pinController = TextEditingController();
  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
      width: ScreenUtil().setWidth(50),
      height: ScreenUtil().setHeight(61),
      textStyle: GoogleFonts.nunitoSans(
        textStyle: AppStyle.twentyfourbold(Colors.black)
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffA9A9A999)),
        borderRadius: BorderRadius.circular(20),),
    );
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
                  Text("code_verification",style: GoogleFonts.nunitoSans(
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
                child: Text("code_verification2",
                  style: GoogleFonts.nunitoSans(
                      textStyle: AppStyle.seventeen(Colors.black)
                  ),).tr(),
              ),
              SizedBox(height: ScreenUtil().setHeight(52),),
              Center(
                child: Pinput(
                  defaultPinTheme: defaultPinTheme,
                  length: 4,
                  controller: pinController,
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(65),),
              OnBoardingButtonWidget(text: "continue_text", onTap: (){
                // if (pinController.text.isEmpty){
                //   return LoginDialog.passworddialog(context);
                // }
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ResetPasswordScreen();
                }));
              }, width: MediaQuery.of(context).size.width)
            ],
          ),
        ),
      ),
    );
  }
}
