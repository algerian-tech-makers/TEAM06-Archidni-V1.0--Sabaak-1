import 'package:archdni/controller/onbording_controller.dart';
import 'package:archdni/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
 
class OnBordingSlider
    extends GetView<OnBoardingControllerImp> {
  const OnBordingSlider({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBordingList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Text(onBordingList[index].title!,
                    style: Theme.of(context)
                        .textTheme
                        .headline1),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  onBordingList[index].imageUrl!,
                ),
                Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      onBordingList[index]
                          .description!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
