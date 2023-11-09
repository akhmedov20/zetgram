import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/widgets/notifications_widget/notifications_widget.dart';

import '../../../ui_models/post_model/post_model.dart';
import '../../../widgets/textstyle_widget/textstyle_widget.dart';

class NotificationsScreen extends StatelessWidget {
 NotificationsScreen({Key? key}) : super(key: key);

 List<PostModel> post = [
   PostModel(profile: "assets/images/shakira.jpg", name: "Shakira",
       username: "shakira",city: "Columbia",
       post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
       postPicture: "assets/images/shakira3.jpg", likes: 1892, likes2: 1893, comments: 72, hour: 2),
   PostModel(profile: "assets/images/shakira.jpg", name: "Shakira",
       username: "shakira",city: "Columbia",
       post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
       postPicture: "assets/images/shakira4.jpg", likes: 1892, likes2: 1893, comments: 72, hour: 2),
   PostModel(profile: "assets/images/cristiano.jpg", name: "Cristiano Ronaldo",
       username: "cristiano",city: "Lisbon, Portugal",
       post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
       postPicture: "assets/images/cristiano2.jpg", likes: 1892, likes2: 1893, comments: 72, hour: 2),
   PostModel(profile: "assets/images/cristiano.jpg", name: "Cristiano Ronaldo",
       username: "cristiano",city: "Lisbon, Portugal",
       post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
       postPicture: "assets/images/cristiano3.jpg", likes: 1892, likes2: 1893, comments: 72, hour: 2),
   PostModel(profile: "assets/images/messi.jpg", name: "Leo Messi",
       username: "leomessi",city: "Miami, USA",
       post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
       postPicture: "assets/images/messi2.jpg", likes: 1892, likes2: 1893, comments: 72, hour: 2),
   PostModel(profile: "assets/images/messi.jpg", name: "Leo Messi",
       username: "leomessi",city: "Miami, USA",
       post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
       postPicture: "assets/images/messi3.jpg", likes: 1892, likes2: 1893, comments: 72, hour: 2),
   PostModel(profile: "assets/images/fcb.jpg", name: "FC Bayern",
       username: "fcbayern",city: "Munich, Germany",
       post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
       postPicture: "assets/images/bayern2.jpg", likes: 1892, likes2: 1893, comments: 72, hour: 2),
   PostModel(profile: "assets/images/433.jpg", name: "433",
       username: "433",city: "Munich, Germany",
       post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
       postPicture: "assets/images/4332.jpg", likes: 1892, likes2: 1893, comments: 72, hour: 2),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(20),right: ScreenUtil().setWidth(20)),
          child: ListView(
            physics: const ScrollPhysics(),
            children: [
              SizedBox(height: ScreenUtil().setHeight(40),),
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(CupertinoIcons.arrow_left)),
                  SizedBox(width: ScreenUtil().setWidth(15)),
                  Text("notifications_text",style: GoogleFonts.nunitoSans(
                      textStyle: AppStyle.eighteen(Colors.black)
                  ),).tr(),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(40),),
              Text("today_text",style: GoogleFonts.nunitoSans(
                textStyle: AppStyle.eighteen(Colors.black)
              ),).tr(),
              SizedBox(height: ScreenUtil().setHeight(30),),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: post.length,
                    itemBuilder: (context,i){
                  return NotificationsWidget(img: post[i].profile, name: post[i].name, function: "mentioned_you_text",
                      time: "min", time2: 20, comment: post[i].post);
                }),
              ),
              SizedBox(height: ScreenUtil().setHeight(20),),
              Text("yesterday_text",style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.eighteen(Colors.black)
              ),).tr(),
              SizedBox(height: ScreenUtil().setHeight(20),),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: post.length,
                    itemBuilder: (context,i){
                      return NotificationsWidget(img: post[i].profile, name: post[i].name, function: "mentioned_you_text",
                          time: "min", time2: 20, comment: post[i].post);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
