import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'hide Trans;
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:zet_gram/src/widgets/textstyle_widget/textstyle_widget.dart';

class TextFormPassword extends StatefulWidget {
  final TextEditingController controller;
  final String text;
  final String hintText;
  const TextFormPassword({Key? key, required this.controller, required this.text, required this.hintText}) : super(key: key);

  @override
  State<TextFormPassword> createState() => _TextFormPasswordState();
}

class _TextFormPasswordState extends State<TextFormPassword> {
  var isObsecure  = true.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Obx(
              ()=>TextFormField(
            style: AppStyle.sixteenbold(Colors.black),
            controller: widget.controller,
            obscureText: isObsecure.value,
            // validator: (val) => val == "" ? "please_write_your_email" : null,
            decoration: InputDecoration(
                suffixIcon: Obx(
                        () => GestureDetector(
                      onTap: (){
                        isObsecure.value = !isObsecure.value;
                      },
                      child: Icon(
                        isObsecure.value ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                    )
                ),
                hintText: (widget.hintText ?? '').tr(),
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
                        color: Colors.white60
                    )
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
                fillColor: Colors.white,
                filled: true
            ),
          )
      ),
    );
  }
}
