import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/dialogs/bottom_dialogs/login_dialog.dart';
import 'package:zet_gram/src/ui/auth/forgot_password/forgot_password_screen.dart';
import 'package:zet_gram/src/ui/main/main_screen.dart';
import 'package:zet_gram/src/widgets/buttons/google_button_widget.dart';
import 'package:zet_gram/src/widgets/buttons/onBoarding_button_widget.dart';
import 'package:zet_gram/src/widgets/textForm_simple_widget/textFormPassword.dart';
import 'package:zet_gram/src/widgets/textForm_simple_widget/textForm_email.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(25),right: ScreenUtil().setWidth(25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(30),),
            Text("on_board_text",style: GoogleFonts.nunitoSans(
              textStyle: AppStyle.sixteenbold(Colors.black)
            ),).tr(),
            SizedBox(height: ScreenUtil().setHeight(15),),
            TextFormEmail(controller: emailController,
                hintText: "on_board_text2", text: '',),
            SizedBox(height: ScreenUtil().setHeight(50),),
            Text("on_board2_text",style: GoogleFonts.nunitoSans(
                textStyle: AppStyle.sixteenbold(Colors.black)
            ),).tr(),
            SizedBox(height: ScreenUtil().setHeight(15),),
            TextFormPassword(controller: passwordController, text: "", hintText: "please_enter_your_password"),
            SizedBox(height: ScreenUtil().setHeight(25),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ForgotPasswordScreen();
                  }));
                }, child: Text('on_board2_text2',style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.fourteen(Colors.grey)
                ),).tr()),

              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(30),),
            OnBoardingButtonWidget(text: "login_text", onTap: (){
              // if (passwordController.text.isEmpty){
              //   return LoginDialog.logindialog(context);
              // }
              // else if (emailController.text.isEmpty){
              //   return LoginDialog.logindialog(context);
              // }
              // else {
              //
              // }
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MainScreen();
              }));
            }, width: MediaQuery.of(context).size.width),
            SizedBox(height: ScreenUtil().setHeight(30),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: ScreenUtil().setWidth(20)),
                Container(
                  width: ScreenUtil().setWidth(60),
                  height: ScreenUtil().setHeight(1.5),
                  color: Colors.grey,
                ),
                SizedBox(width: ScreenUtil().setWidth(20)),
                Text("or_login_with",style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.fourteen(Colors.black)
                ),).tr(),
                SizedBox(width: ScreenUtil().setWidth(20)),
                Container(
                  width: ScreenUtil().setWidth(60),
                  height: ScreenUtil().setHeight(1.5),
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(30),),
            GoogleButtonWidget(text: "Google", onTap: (){
            }, width: MediaQuery.of(context).size.width,
                svg: "assets/icons/zet_google.svg", color: Colors.black, Containercolor:Colors.white,)
          ],
        ),
      ),
    );
  }
}
