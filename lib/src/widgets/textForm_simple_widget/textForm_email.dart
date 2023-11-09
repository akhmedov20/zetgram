import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

class TextFormEmail extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final String hintText;
  const TextFormEmail({Key? key, required this.controller, required this.text, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        style: AppStyle.sixteenbold(Colors.black),
        controller: controller,
        validator: (val) => val == "" ? text : null,
        decoration: InputDecoration(
            hintText: hintText ?.tr(),
            hintStyle: AppStyle.fourteen(Colors.grey),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.white60
                )
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.white60
                )
            ),
            focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.white60
                )
            ),
            disabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.grey
                )
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
            fillColor: Colors.white,
            filled: true
        ),
      ),
    );
  }
}
