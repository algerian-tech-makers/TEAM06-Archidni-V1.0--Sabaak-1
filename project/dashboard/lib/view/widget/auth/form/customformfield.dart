import 'package:flutter/material.dart';

class AppCustomFormFaild extends StatelessWidget {
  final String lable;
  final String hint;
  final IconData icon;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController controller;

  const AppCustomFormFaild(
      {Key? key,
      required this.lable,
      required this.hint,
      required this.icon,
      required this.keyboardType,
      required this.obscureText,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(
                  vertical: 16, horizontal: 25),
          label: Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 9),
            child: Text(
              lable,
              style: ThemeData()
                  .textTheme
                  .headline1!
                  .copyWith(
                      fontWeight:
                          FontWeight.w500),
            ),
          ),
          hintText: hint,
          hintStyle: ThemeData()
              .textTheme
              .bodyText1!
              .copyWith(
                fontSize: 14,
                height: 1.5,
                color: Colors.grey,
              ),
          floatingLabelBehavior:
              FloatingLabelBehavior.always,
          suffixIcon: Icon(
            icon,
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
