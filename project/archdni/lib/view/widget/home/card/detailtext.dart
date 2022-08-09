import 'package:archdni/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AppCardDeetailleText
    extends StatelessWidget {
  final String rating;
  final String price;
  final int student;
  const AppCardDeetailleText(
      {Key? key,
      required this.rating,
      required this.price,
      required this.student})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 15, right: 5),
      child: Row(
        children: [
          const Icon(Ionicons.star_outline,
              color: Color.fromARGB(
                  255, 221, 172, 65),
              size: 22),
          const SizedBox(
            width: 3.5,
          ),
          Text(" $rating |",
              style: const TextStyle(
                fontSize: 15,
                height: 2,
              )),
          const SizedBox(
            width: 10,
          ),
          const Icon(Ionicons.cash_outline,
              color: Color.fromARGB(
                  255, 19, 174, 11),
              size: 22),
          const SizedBox(
            width: 3.5,
          ),
          Text(" $price |",
              style: const TextStyle(
                fontSize: 15,
                height: 2,
              )),
          const SizedBox(
            width: 10,
          ),
          const Icon(Ionicons.people_outline,
              color: AppColor.secoundry,
              size: 20),
          const SizedBox(
            width: 3.5,
          ),
          Text(student.toString(),
              style: const TextStyle(
                height: 2,
                fontSize: 15,
              )),
        ],
      ),
    );
  }
}
