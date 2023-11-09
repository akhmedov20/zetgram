import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../widgets/textstyle_widget/textstyle_widget.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
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
                    Navigator.pop(context);
                  }, icon: Icon(CupertinoIcons.arrow_left)),
                  Text("languages_1",style: GoogleFonts.nunitoSans(
                      textStyle: AppStyle.twentyfourbold(Colors.black)
                  ),).tr(),
                  Spacer(),
                  IconButton(onPressed: (){
                  }, icon: Icon(Icons.more_vert))
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(40),),
              ListTile(
                onTap: (){
                  context.setLocale(Locale('uz'));
                },
                title: Text("UZ",style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.sixteenbold(Colors.black)
                ),),
              ),
              SizedBox(height: ScreenUtil().setHeight(20),),
              ListTile(
                onTap: (){
                  context.setLocale(Locale('ru'));
                },
                title: Text("RU",style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.sixteenbold(Colors.black)
                ),),
              ),
              SizedBox(height: ScreenUtil().setHeight(20),),
              ListTile(
                onTap: (){
                  context.setLocale(Locale('en'));
                },
                title: Text("EN",style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.sixteenbold(Colors.black)
                ),),
              ),
              SizedBox(height: ScreenUtil().setHeight(20),),
            ],
          ),
        ),
      ),
    );
  }
}
