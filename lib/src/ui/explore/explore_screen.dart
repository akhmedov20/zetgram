import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/ui/explore/show_search.dart';

import '../../widgets/textstyle_widget/textstyle_widget.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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
      body: ListView(
        physics: const ScrollPhysics(),
        children: [
          SizedBox(height: ScreenUtil().setHeight(40),),
          Row(
            children: [
              SizedBox(width: ScreenUtil().setWidth(20),),
              Text("explore_text",style: GoogleFonts.nunitoSans(
                  textStyle: AppStyle.twentyfourbold(Colors.black)
              ),).tr(),
              const Spacer(),
              IconButton(onPressed: (){
                showSearch(context: context, delegate: CustomSearchDelegate(),);
              }, icon: Icon(Icons.search,size: ScreenUtil().setHeight(28),)),
              SizedBox(width: ScreenUtil().setWidth(20),),
            ],
          ),
          GridView.builder(
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
      )
    );
  }
}
