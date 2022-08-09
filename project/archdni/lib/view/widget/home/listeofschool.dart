import 'package:archdni/controller/home.controller.dart';
import 'package:archdni/data/models/schoolmodel.dart';
import 'package:archdni/view/screens/school.dart';
import 'package:archdni/view/widget/home/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppListSchool extends StatelessWidget {
  const AppListSchool({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp homeController =
        Get.put(HomeControllerImp());

    late List<SchoolModel> data =
        homeController.wordList;
    return GetBuilder<HomeControllerImp>(
        init: HomeControllerImp(),
        builder: (homeController) {
          homeController.getData();
          return Scaffold(
              body: Center(
            child: homeController.isLoading
                ? const CircularProgressIndicator(
                    color: Colors.black,
                  )
                : ListView.builder(
                    itemCount: data.length,
                    itemBuilder:
                        (BuildContext context,
                            index) {
                      return Padding(
                        padding: const EdgeInsets
                                .symmetric(
                            horizontal: 1,
                            vertical: 5),
                        child: AppCard(
                          logo: data[index].logo!,
                          latitude: data[index].latitude!,
                          longitude: data[index].longitude!,
                          name: data[index].name!,
                          student: data[index].students!,
                          image: data[index]
                              .imageUrl!,
                          city: data[index].city!,
                          rating:
                              data[index].rating!,
                          price:
                              data[index].price!,
                          index: index,
                          onTap: () {
                            Get.to(
                              () => School(
                                index: index,
                              
                              
                              ),
                              routeName:
                                  '/school',
                              transition:
                                  Transition
                                      .downToUp,
                              duration:
                                  const Duration(
                                      milliseconds:
                                          300),
                            );
                          },
                        ),
                      );
                    },
                  ),
          ));
        });
  }
}
