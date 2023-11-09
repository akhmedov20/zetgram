import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/ui/profile/settings/settings_screen.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  List<String> img = [
    "assets/images/explore.png",
    "assets/images/explore2.png",
    "assets/images/explore3.png",
    "assets/images/explore4.png",
    "assets/images/explore5.png",
    "assets/images/explore6.png",
    "assets/images/cristiano3.jpg",
    "assets/images/cristiano2.jpg",
    "assets/images/shakira3.jpg",
    "assets/images/shakira4.jpg",
    "assets/images/messi2.jpg",
    "assets/images/messi3.jpg",
    "assets/images/bayern2.jpg",
    "assets/images/4332.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:EdgeInsets.only(left: ScreenUtil().setWidth(20),right: ScreenUtil().setWidth(20)),
          child: ListView(
            physics: const ScrollPhysics(),
            children: [
              SizedBox(height: ScreenUtil().setHeight(40),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("profile_1",style: GoogleFonts.nunitoSans(
                    textStyle: AppStyle.twentyfourbold(Colors.black)
                  ),).tr(),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SettingsScreen();
                    }));
                  }, icon: Icon(Icons.settings))
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(40),),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(136),
                child: Row(
                  children: [
                    SizedBox(
                    width: ScreenUtil().setWidth(96),
                    height: ScreenUtil().setHeight(86),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(86),
                            child: Image.asset("assets/images/cristiano.jpg",
                              width: ScreenUtil().setWidth(76),
                              height: ScreenUtil().setHeight(86),
                            ),
                          ),
                          Positioned(
                              bottom: ScreenUtil().setHeight(3),
                              right: ScreenUtil().setWidth(10),
                              child: Container(
                            width: ScreenUtil().setWidth(36),
                            height: ScreenUtil().setHeight(36),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(36),
                                  color: Colors.blue,
                                  border: Border.all(width: 1,color: Colors.white)
                                ),
                                child: Center(
                                  child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                                ),
                          ))
                        ],
                      )
                    ),
                    SizedBox(width: ScreenUtil().setWidth(16),),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: ScreenUtil().setHeight(20),),
                        Text("Cristiano Ronaldo",style: GoogleFonts.nunitoSans(
                          textStyle: AppStyle.twenty(Colors.black)
                        ),),
                        Text("@cristiano",style: GoogleFonts.nunitoSans(
                            textStyle: AppStyle.sixteen(Colors.grey)
                        ),),
                        Text("Lisbon, Portugal",style: GoogleFonts.nunitoSans(
                            textStyle: AppStyle.sixteen(Colors.grey)
                        ),)
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10),),
              Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(92),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x11929292),
                      blurRadius: 75,
                      offset: Offset(0, 10),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: ScreenUtil().setWidth(110),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: ScreenUtil().setHeight(20),),
                          Text(890.toString(),
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.nunitoSans(
                            textStyle: AppStyle.twenty(Colors.black)
                          ),),
                          Text("likes_text",style: GoogleFonts.nunitoSans(
                              textStyle: AppStyle.sixteen(Colors.grey)
                          ),).tr()
                        ],
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(110),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: ScreenUtil().setHeight(20),),
                          Text(890.toString(),
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.nunitoSans(
                                textStyle: AppStyle.twenty(Colors.black)
                            ),),
                          Text("followers_text",style: GoogleFonts.nunitoSans(
                              textStyle: AppStyle.sixteen(Colors.grey)
                          ),).tr()
                        ],
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(110),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: ScreenUtil().setHeight(20),),
                          Text(890.toString(),
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.nunitoSans(
                                textStyle: AppStyle.twenty(Colors.black)
                            ),),
                          Text("following_text",style: GoogleFonts.nunitoSans(
                              textStyle: AppStyle.sixteen(Colors.grey)
                          ),).tr()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(30),),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2.2 / 3.2,
                  ),
                  itemCount: img.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10),
                          vertical: ScreenUtil().setHeight(8)),
                      width: ScreenUtil().setWidth(200),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(img[index],fit: BoxFit.cover,),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
