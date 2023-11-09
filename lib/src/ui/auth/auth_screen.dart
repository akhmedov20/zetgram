import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zet_gram/src/ui/auth/login/login_screen.dart';
import 'package:zet_gram/src/ui/auth/signUp/signUp_screen.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2,vsync: this);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: ScreenUtil().setHeight(34),),
            Container(
              width: ScreenUtil().setWidth(64),
              height: ScreenUtil().setHeight(64),
              decoration: BoxDecoration(
                color: Color(0xff327FEB),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: SvgPicture.asset("assets/icons/zet_logo2.svg",
                  width: ScreenUtil().setWidth(31),
                  height: ScreenUtil().setHeight(31),
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(45),),
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  indicator: CircleTabIndicator(color: Colors.black, radius: 4),
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: true,
                  unselectedLabelColor: const Color(0xffA9A9A9),
                  labelColor: Colors.black,
                  controller: _tabController,
                  tabs: [
                    Tab(
                      child: Text("login_2",style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                      )).tr(),
                    ),
                    Tab(
                      child: Text("sign_up",style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                      )).tr(),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                  controller: _tabController,
                  physics: ScrollPhysics(),
                  children: const [
                    LoginScreen(),
                    SignUpScreen()
                  ]),
            ),

          ],
        ),
      ),
    );
  }
}
class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius}) : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
    ..color = color
    ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset = offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}

