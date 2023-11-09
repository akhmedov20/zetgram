import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';


class ChangeThemeButtonWidget extends StatefulWidget {
  const ChangeThemeButtonWidget({Key? key}) : super(key: key);

  @override
  State<ChangeThemeButtonWidget> createState() => _ChangeThemeButtonWidgetState();
}

class _ChangeThemeButtonWidgetState extends State<ChangeThemeButtonWidget> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58,
      height: 44,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Switch.adaptive(
            activeColor: Color(0xff327FEB),
            inactiveTrackColor: Colors.grey,
            thumbColor: MaterialStateProperty.resolveWith<Color>((states) => Colors.white),
            inactiveThumbColor: Colors.white,
            value: light,
            onChanged: (bool value) {
              setState(() {
                light = value;
              });
            }
        ),
      ),
    );
    // return SizedBox(
    //   width: 45,
    //   height: 24,
    //   child: LiteRollingSwitch(
    //       value: true,
    //       colorOn: Colors.white,
    //       colorOff: Colors.blue,
    //       textOn: "",
    //       textOff: '',
    //       onChanged: (bool position){
    //
    //       }, onTap: (){}, onDoubleTap: (){}, onSwipe: (){},),
    // );
  }
}
