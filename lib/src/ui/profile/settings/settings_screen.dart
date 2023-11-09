import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/ui/profile/settings/language/language_screen.dart';
import 'package:zet_gram/src/widgets/change_theme_button_widget/change_switch_button_widget.dart';
import 'package:zet_gram/src/widgets/setting_widgets/listile_widget.dart';

import '../../../widgets/textstyle_widget/textstyle_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool lights = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  }, icon: Icon(CupertinoIcons.arrow_left)),
                  Text("settings_0",style: GoogleFonts.nunitoSans(
                      textStyle: AppStyle.twentyfourbold(Colors.black)
                  ),).tr(),
                  Spacer(),
                  IconButton(onPressed: (){
                  }, icon: Icon(Icons.more_vert))
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(40),),
              Text("settings_1",style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.twentyfourbold(Colors.black)
              ),).tr(),
              SizedBox(height: ScreenUtil().setHeight(25),),
              SettingListileWidget(text: "settings_2", onTap: (){}),
              SizedBox(height: ScreenUtil().setHeight(20),),
              SettingListileWidget(text: "settings_3", onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LanguageScreen();
                }));
              }),
              SizedBox(height: ScreenUtil().setHeight(20),),
              SettingListileWidget(text: "settings_4", onTap: (){}),
              SizedBox(height: ScreenUtil().setHeight(30),),
              Text("settings_5",style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.twentyfourbold(Colors.black)
              ),).tr(),
              SizedBox(height: ScreenUtil().setHeight(25),),
              Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(56),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2.8,
                          color: Colors.grey
                      )
                    ]
                ),
                child: Row(
                  children: [
                    SizedBox(width: ScreenUtil().setWidth(15),),
                    Text("settings_6",style: GoogleFonts.nunitoSans(
                        textStyle: AppStyle.sixteenbold(Colors.black)
                    ),).tr(),
                    Spacer(),
                    ChangeThemeButtonWidget(),
                    SizedBox(width: ScreenUtil().setWidth(5),),
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(20),),
              SettingListileWidget(text: "settings_7", onTap: (){}),
              SizedBox(height: ScreenUtil().setHeight(30),),
              Text("settings_8",style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.twentyfourbold(Colors.black)
              ),).tr(),
              SizedBox(height: ScreenUtil().setHeight(25),),
              Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(56),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2.8,
                          color: Colors.grey
                      )
                    ]
                ),
                child: Row(
                  children: [
                    SizedBox(width: ScreenUtil().setWidth(15),),
                    Text("settings_9",style: GoogleFonts.nunitoSans(
                        textStyle: AppStyle.sixteenbold(Colors.black)
                    ),).tr(),
                    Spacer(),
                    ChangeThemeButtonWidget(),
                    SizedBox(width: ScreenUtil().setWidth(5),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
