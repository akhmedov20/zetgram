import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../dialogs/bottom_dialogs/login_dialog.dart';
import '../../../widgets/buttons/google_button_widget.dart';
import '../../../widgets/buttons/onBoarding_button_widget.dart';
import '../../../widgets/textForm_simple_widget/textForm_email.dart';
import '../../../widgets/textstyle_widget/textstyle_widget.dart';
import '../../main/main_screen.dart';
import '../forgot_password/forgot_password_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  var email_sign_Controller = TextEditingController();

  var user_sign_Controller = TextEditingController();

  var password_sign_Controller = TextEditingController();

  var isObsecure_sign  = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(25),right: ScreenUtil().setWidth(25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(50),),
            Text("on_board_sign",style: GoogleFonts.nunitoSans(
                textStyle: AppStyle.sixteenbold(Colors.black)
            ),).tr(),
            SizedBox(height: ScreenUtil().setHeight(15),),
            TextFormEmail(controller: email_sign_Controller,
              hintText: "on_board_text2", text: '',),
            SizedBox(height: ScreenUtil().setHeight(30),),
            Text("on_board_sign2",style: GoogleFonts.nunitoSans(
                textStyle: AppStyle.sixteenbold(Colors.black)
            ),).tr(),
            SizedBox(height: ScreenUtil().setHeight(15),),
            TextFormEmail(controller: user_sign_Controller,
              hintText: "on_board_text2", text: '',),
            SizedBox(height: ScreenUtil().setHeight(50),),
            Text("on_board2_text",style: GoogleFonts.nunitoSans(
                textStyle: AppStyle.sixteenbold(Colors.black)
            ),).tr(),
            SizedBox(height: ScreenUtil().setHeight(25),),
            Obx(
                    ()=>TextFormField(
                  style: AppStyle.sixteenbold(Colors.black),
                  controller: password_sign_Controller,
                  obscureText: isObsecure_sign.value,
                  // validator: (val) => val == "" ? "Please write your email" : null,
                  decoration: InputDecoration(
                      suffixIcon: Obx(
                              () => GestureDetector(
                            onTap: (){
                              isObsecure_sign.value = !isObsecure_sign.value;
                            },
                            child: Icon(
                              isObsecure_sign.value ? Icons.visibility_off : Icons.visibility,
                              color: Colors.grey,
                            ),
                          )
                      ),
                      hintText: "Enter your password",
                      hintStyle: AppStyle.fourteen(Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white60
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white60
                          )
                      ),
                      focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white60
                          )
                      ),
                      disabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white60
                          )
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
                      fillColor: Colors.white,
                      filled: true
                  ),
                )
            ),
            SizedBox(height: ScreenUtil().setHeight(75),),
            OnBoardingButtonWidget(text: "login_text", onTap: (){
              // if (password_sign_Controller.text.isEmpty){
              //   return LoginDialog.passworddialog(context);
              // }
              // else {
              //
              // }
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MainScreen();
              }));
            }, width: MediaQuery.of(context).size.width),


          ],
        ),
      ),
    );
  }
}
