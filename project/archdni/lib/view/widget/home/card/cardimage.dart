import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppCardAvatarImage extends StatelessWidget {
  final String? logo;

  const AppCardAvatarImage(
      {Key? key, required this.logo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey
                  .withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 3),
            ),
          ],
          image: DecorationImage(
            image: CachedNetworkImageProvider(
                logo!),
            fit: BoxFit.fill,
          ),
          borderRadius:
              const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          )),
    );
  }
}
