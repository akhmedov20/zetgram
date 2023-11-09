import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/ui/home/notifications/notifications_screen.dart';
import 'package:zet_gram/src/ui_models/stories_model/stories_model.dart';
import 'package:zet_gram/src/ui_models/stories_model/story_screen.dart';
import 'package:zet_gram/src/widgets/post_widget/post_widget.dart';
import 'package:zet_gram/src/widgets/stories_widget/stories_widget.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

import '../../ui_models/post_model/post_model.dart';
import '../profile/detail_profil_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StoriesModel> story = [
    StoriesModel(decoration: const BoxDecoration(), img: "assets/images/rectangle2.png", name: "add_story_text".tr()),
    StoriesModel(decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 3,color: const Color(0xff327FEB))
    ), img: "assets/images/cristiano.jpg", name: "Cristiano Ronaldo"),
    StoriesModel(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 3,color: const Color(0xff327FEB))
    ), img: "assets/images/messi.jpg", name: "Leo Messi"),
    StoriesModel(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 3,color: const Color(0xff327FEB))
    ), img: "assets/images/nike.jpg", name: "Nike"),
    StoriesModel(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 3,color: const Color(0xff327FEB))
    ), img: "assets/images/neuer.jpg", name: "Manuel Neuer"),
    StoriesModel(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 3,color: const Color(0xff327FEB))
    ), img: "assets/images/becks.jpg", name: "David Beckham"),
    StoriesModel(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 3,color: const Color(0xff327FEB))
    ), img: "assets/images/gio.jpg", name: "Georgina"),
    StoriesModel(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 3,color: const Color(0xff327FEB))
    ), img: "assets/images/shakira.jpg", name: "Shakira"),
    StoriesModel(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 3,color: const Color(0xff327FEB))
    ), img: "assets/images/lewa.jpg", name: "Robert Lewandowski"),
  ];
  List<PostModel> post = [
    PostModel(profile: "assets/images/fcb20.png", name: "FC Bayern",
        username: "fcbayern",city: "Munich, Germany",
        post: "WWWWWWWWW 🔥 @fcbayern have won all 9️⃣ of their 🆑 games this season.Goal difference: 39-8 😳",
        postPicture: "assets/images/bayern7.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/fcb20.png", name: "FC Bayern",
        username: "fcbayern",city: "Munich, Germany",
        post: "WWWWWWWWW 🔥 @fcbayern have won all 9️⃣ of their 🆑 games this season.Goal difference: 39-8 😳",
        postPicture: "assets/images/bayern8.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/cristiano.jpg", name: "Cristiano Ronaldo",
        username: "cristiano",city: "Lisbon, Portugal",
        post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
        postPicture: "assets/images/cr7.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/cristiano.jpg", name: "Cristiano Ronaldo",
        username: "cristiano",city: "Lisbon, Portugal",
        post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
        postPicture: "assets/images/cr72.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/messi.jpg", name: "Leo Messi",
        username: "leomessi",city: "Miami, USA",
        post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
        postPicture: "assets/images/messi7.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/messi.jpg", name: "Leo Messi",
        username: "leomessi",city: "Miami, USA",
        post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
        postPicture: "assets/images/messi9.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/shakira.jpg", name: "Shakira",
        username: "shakira",city: "Columbia",
        post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
        postPicture: "assets/images/shakira3.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/shakira.jpg", name: "Shakira",
        username: "shakira",city: "Columbia",
        post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
        postPicture: "assets/images/shakira4.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/cristiano.jpg", name: "Cristiano Ronaldo",
        username: "cristiano",city: "Lisbon, Portugal",
        post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
        postPicture: "assets/images/cristiano2.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/cristiano.jpg", name: "Cristiano Ronaldo",
        username: "cristiano",city: "Lisbon, Portugal",
        post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
        postPicture: "assets/images/cristiano3.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/messi.jpg", name: "Leo Messi",
        username: "leomessi",city: "Miami, USA",
        post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
        postPicture: "assets/images/messi2.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/messi.jpg", name: "Leo Messi",
        username: "leomessi",city: "Miami, USA",
        post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
        postPicture: "assets/images/messi3.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/fcb.jpg", name: "FC Bayern",
        username: "fcbayern",city: "Munich, Germany",
        post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
        postPicture: "assets/images/bayern2.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
    PostModel(profile: "assets/images/433.jpg", name: "433",
        username: "433",city: "Munich, Germany",
        post: "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
        postPicture: "assets/images/4332.jpg", likes: 1894, likes2: 1893, comments: 72, hour: 2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(20),right: ScreenUtil().setWidth(20)),
          child: ListView(
            children: [
              SizedBox(height: ScreenUtil().setHeight(40),),
              Row(
                children: [
                  Text("home_text",style: GoogleFonts.nunitoSans(
                      textStyle: AppStyle.twentyfourbold(Colors.black)
                  ),).tr(),
                  const Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return NotificationsScreen();
                        }));
                      },
                      child: SvgPicture.asset("assets/icons/bell.svg")),
                  SizedBox(width: ScreenUtil().setWidth(20),),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(45),),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(105),
                child: StoryScreen()
              ),
              SizedBox(height: ScreenUtil().setHeight(30),),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: post.length,
                  itemBuilder: (context,i){
                    return PostWidget(profile: post[i].profile, name: post[i].name,
                      post: post[i].post, likes: post[i].likes, comments: post[i].comments,
                      hour: post[i].hour, postPicture: post[i].postPicture,
                      likes2: post[i].likes2,ontap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return DetailProfileScreen(profile: post[i].profile,
                            name: post[i].name, username: post[i].username.toString(),
                            city: post[i].city,
                          );
                        }));
                      },);
                  }
              )
            ],
          )
        ),
      ),
    );
  }
}
