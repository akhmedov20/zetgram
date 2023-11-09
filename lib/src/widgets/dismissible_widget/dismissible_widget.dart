import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DismissibleWidget <T> extends StatelessWidget {
  final T item;
  final Widget child;
  const DismissibleWidget({Key? key, required this.child,required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: ObjectKey(item),
        child: child,
      background: buildSwipeActionRight(),
    );
  }
  Widget buildSwipeActionRight() => Container(
    alignment: Alignment.centerRight,
    padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
    child: Icon(Icons.delete_outline,color: Colors.red,),
  );
}
