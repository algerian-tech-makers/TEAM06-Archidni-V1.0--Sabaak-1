 import 'package:flutter/material.dart';
 
class AppCardTitel extends StatelessWidget {
  final String name;
  final String city;
  const AppCardTitel(
      {Key? key,
      required this.name,
      required this.city})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10, right: 10),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            mainAxisAlignment:
                MainAxisAlignment.start,
            children: [
              Text(name,
                  style: const TextStyle(
                    fontSize: 19,
                  )),
              Text(city,
                  style: const TextStyle(
                    height: 0.7,
                    fontSize: 15,
                    color: Colors.grey,
                  )),
            ],
          ),
         
        ],
      ),
    );
  }
}
