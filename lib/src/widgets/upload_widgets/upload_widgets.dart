import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadImgWidget extends StatefulWidget {
  const UploadImgWidget({Key? key}) : super(key: key);

  @override
  State<UploadImgWidget> createState() => _UploadImgWidgetState();
}

class _UploadImgWidgetState extends State<UploadImgWidget> {
  bool tap = true;
  bool tap2 = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  tap2 = !tap2;
                });
              },
              child: Image.asset(tap2 ? "assets/images/imgzet1.png": "assets/images/check2.png",
                width: ScreenUtil().setWidth(150),
                height: ScreenUtil().setHeight(150),
              ),
            ),
          ),
          SizedBox(width: ScreenUtil().setWidth(30),),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  tap = !tap;
                });
              },
              child: Image.asset(tap ? "assets/images/1.png": "assets/images/check2.png",
                width: ScreenUtil().setWidth(150),
                height: ScreenUtil().setHeight(150),
              ),
            ),
          )
        ],
      ),
    );
  }
}
