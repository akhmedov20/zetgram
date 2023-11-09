import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../textstyle_widget/textstyle_widget.dart';

class SettingListileWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  const SettingListileWidget({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
            Text(text,style: GoogleFonts.nunitoSans(
                textStyle: AppStyle.sixteenbold(Colors.black)
            ),).tr(),
            Spacer(),
            IconButton(onPressed: (){},icon: Icon(CupertinoIcons.right_chevron),),
            SizedBox(width: ScreenUtil().setWidth(5),),
          ],
        ),
      ),
    );
  }
}
