import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/dialogs/bottom_dialogs/upload_dialog.dart';
import '../../widgets/textstyle_widget/textstyle_widget.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: ScreenUtil().setHeight(40),),
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(CupertinoIcons.arrow_left)),
                SizedBox(width: ScreenUtil().setWidth(10),),
                Text("upload_text",style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.twentyfourbold(Colors.black)
                ),).tr(),
                Spacer(),
                IconButton(onPressed: (){
                  UploadDialog.uploaddialog(context);
                }, icon: Icon(Icons.more_vert))
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(20),),
            Expanded(
              child: Image.asset("assets/images/imgzet1.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
