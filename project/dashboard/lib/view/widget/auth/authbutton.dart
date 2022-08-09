import 'package:flutter/material.dart';
 
class AppCustomAuthButton
    extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color color;
  const AppCustomAuthButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        onPressed: onPressed,
        height: 53,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 19,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
