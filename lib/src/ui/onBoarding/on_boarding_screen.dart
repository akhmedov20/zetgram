import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zet_gram/src/ui/auth/auth_screen.dart';
import 'package:zet_gram/src/widgets/onBoarding_widget/onBoarding_widget.dart';

import '../../widgets/buttons/onBoarding_button_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isTrue = false;
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: ScreenUtil().setHeight(690),
              child: PageView(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    isTrue = index == 2;
                  });
                },
                children: const [
                 OnBoardingWidget(img: "assets/images/zet_img.png", text: "on_board1", text2: "on_board_info"),
                 OnBoardingWidget(img: "assets/images/zet_img2.png", text: "on_board2", text2: "on_board_info2"),
                 OnBoardingWidget(img: "assets/images/zet_img3.png", text: "on_board3", text2: "on_board_info3"),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: ScreenUtil().setWidth(25)),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  onDotClicked: (index) => controller.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                  effect: WormEffect(
                    spacing: 10,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.blue,
                    dotWidth: 10,
                    strokeWidth: 50,
                    dotHeight: 10,
                  ),
                ),
                Spacer(),
                isTrue ? OnBoardingButtonWidget(text:"button_first", onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return AuthScreen();
                  }));
                },
                  width: ScreenUtil().setWidth(148))
                : OnBoardingButtonWidget(text: "button_2", onTap: (){
                  return controller.jumpToPage(3);
                },
                  width: ScreenUtil().setWidth(148),
                  ),
                SizedBox(width: ScreenUtil().setWidth(25)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
