import 'package:flutter/material.dart';

class AppSiginInText extends StatelessWidget {
  final String titel;
  final String text;
  const AppSiginInText(
      {Key? key,
      required this.titel,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              titel,
              style: ThemeData()
                  .textTheme
                  .headline1!
                  .copyWith(
                      fontSize: 27,
                      color: Colors.black,
                      fontWeight:
                          FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: ThemeData()
                  .textTheme
                  .bodyText1!
                  .copyWith(
                    fontSize: 15,
                    height: 1.5,
                    color: Colors.grey,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
