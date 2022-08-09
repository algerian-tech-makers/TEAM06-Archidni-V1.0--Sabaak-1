 import 'package:archdni/core/constant/color.dart';
import 'package:flutter/material.dart';
 
class AppCustomButtonLang
    extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const AppCustomButtonLang(
      {Key? key,
      required this.textbutton,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      margin: const EdgeInsets.only(top: 10),
      // padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
       color:  AppColor.primary,
      ),
      child: MaterialButton(
        textColor: Colors.white,
        // ignore: sort_child_properties_last
        child: Text(textbutton),
        onPressed: onPressed,
      ),
    );
  }
}
