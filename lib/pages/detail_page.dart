import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit_states.dart';
import 'package:flutter_cubit/cubit/app_cubits.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

import '../widgets/app_buttons.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gotInStars = 4;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
      // if (state is LoadedState) {
      //   var info = state.places;
      //   return Scaffold(
      //       body: Container(
      //         width: double.maxFinite,
      //         height: double.maxFinite,
      //         child: Stack(children: [
      //           Positioned(
      //             left: 0,
      //             right: 0,
      //             child: Container(
      //               width: double.maxFinite,
      //               height: 350,
      //               decoration: const BoxDecoration(
      //                 image: DecorationImage(
      //                     fit: BoxFit.cover, image: AssetImage("img/list_3.png")),
      //               ),
      //             ),
      //           ),
      //           Positioned(
      //               left: 20,
      //               top: 40,
      //               child: Row(
      //                 children: [
      //                   IconButton(
      //                       onPressed: () {
      //                         BlocProvider.of<AppCubits>(context).goHome();
      //                       },
      //                       icon: const Icon(Icons.keyboard_arrow_left),
      //                       color: Colors.white),
      //                 ],
      //               )),
      //           Positioned(
      //               top: 330,
      //               child: Container(
      //                 padding: const EdgeInsets.all(20),
      //                 width: MediaQuery.of(context).size.width,
      //                 height: 500,
      //                 decoration: const BoxDecoration(
      //                     color: Colors.white,
      //                     borderRadius: BorderRadius.only(
      //                       topLeft: Radius.circular(20),
      //                       topRight: Radius.circular(20),
      //                     )),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       children: [
      //                         AppLargeText(
      //                             text: "Йосемити",
      //                             color: Colors.black.withOpacity(0.7)),
      //                         AppLargeText(
      //                             text: "\$ 250", color: AppColors.mainColor),
      //                       ],
      //                     ),
      //                     const SizedBox(
      //                       height: 10,
      //                     ),
      //                     Row(
      //                       children: [
      //                         Icon(
      //                           Icons.location_on,
      //                           color: AppColors.mainColor,
      //                         ),
      //                         SizedBox(height: 5),
      //                         AppText(
      //                           text: "США, Калифорния",
      //                           fontWeight: FontWeight.w400,
      //                           color: AppColors.textColor1,
      //                         )
      //                       ],
      //                     ),
      //                     const SizedBox(height: 20),
      //                     Row(
      //                       children: [
      //                         Wrap(
      //                           children: List.generate(5, (index) {
      //                             return Icon(Icons.star,
      //                                 color: index < gotInStars
      //                                     ? AppColors.starColor
      //                                     : AppColors.mainTextColor);
      //                           }),
      //                         ),
      //                         const SizedBox(height: 10),
      //                         AppText(
      //                           text: "(4.0)",
      //                           fontWeight: FontWeight.w400,
      //                           color: AppColors.mainTextColor,
      //                         )
      //                       ],
      //                     ),
      //                     const SizedBox(height: 30),
      //                     AppLargeText(
      //                         text: "Посетители",
      //                         size: 20,
      //                         color: Colors.black.withOpacity(0.7)),
      //                     const SizedBox(height: 5),
      //                     AppText(
      //                         text: "Выберите кол-во гостей для поездки😜😜",
      //                         fontWeight: FontWeight.w400,
      //                         color: AppColors.mainTextColor),
      //                     const SizedBox(height: 20),
      //                     Wrap(
      //                       children: List.generate(5, (index) {
      //                         return InkWell(
      //                             onTap: () {
      //                               setState(() {
      //                                 selectedIndex = index;
      //                               });
      //                             },
      //                             child: Container(
      //                               margin: const EdgeInsets.only(right: 11),
      //                               child: AppButton(
      //                                 color: selectedIndex == index
      //                                     ? Colors.white
      //                                     : Colors.black,
      //                                 backgroundColor: selectedIndex == index
      //                                     ? Colors.black
      //                                     : AppColors.buttonBackground,
      //                                 size: 60,
      //                                 borderColor: selectedIndex == index
      //                                     ? Colors.black
      //                                     : AppColors.buttonBackground,
      //                                 // isIcon: true,
      //                                 // icon: Icons.cable,
      //                                 isIcon: false,
      //                                 text: (index + 1).toString(),
      //                               ),
      //                             ));
      //                       }),
      //                     ),
      //                     const SizedBox(height: 20),
      //                     AppLargeText(
      //                         text: "Описание",
      //                         color: Colors.black.withOpacity(0.7),
      //                         size: 20),
      //                     const SizedBox(height: 10),
      //                     AppText(
      //                         text: "Здесь растут гигантские секвойи, возраст которых превышает несколько тысячелетий, "
      //                             "возвышаются над долинами гранитные скалы.",
      //                         fontWeight: FontWeight.w400,
      //                         color: AppColors.mainTextColor),
      //                   ],
      //                 ),
      //               )),
      //           Positioned(
      //               bottom: 20,
      //               left: 20,
      //               right: 20,
      //               child: Row(
      //                 children: [
      //                   AppButton(
      //                     color: AppColors.textColor1,
      //                     backgroundColor: Colors.white,
      //                     size: 60,
      //                     borderColor: AppColors.textColor1,
      //                     isIcon: true,
      //                     icon: Icons.favorite_border,
      //                   ),
      //                   const SizedBox(width: 40),
      //                   ResponsiveButton(
      //                     isResponsive: true,
      //                   )
      //                 ],
      //               ))
      //         ],
      //         ),
      //       ));
      // }else{
      //   return Container();
      // }
      DetailState detail = state as DetailState;
      return Scaffold(
          body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      // image: AssetImage("img/list_3.png")),
                      image: NetworkImage("http://mark.bslmeiyu.com/uploads/"+detail.place.img)),
                ),
              ),
            ),
            Positioned(
                left: 20,
                top: 40,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          BlocProvider.of<AppCubits>(context).goHome();
                        },
                        icon: const Icon(Icons.keyboard_arrow_left),
                        color: Colors.white),
                  ],
                )),
            Positioned(
                top: 330,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                              text: detail.place.name,
                              color: Colors.black.withOpacity(0.7)),
                          AppLargeText(
                              text: '\$'+detail.place.price.toString(), color: AppColors.mainColor),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(height: 5),
                          AppText(
                            text: detail.place.location,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor1,
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(Icons.star,
                                  color: index < detail.place.stars
                                      ? AppColors.starColor
                                      : AppColors.mainTextColor);
                            }),
                          ),
                          const SizedBox(height: 10),
                          AppText(
                            text: "5.0",
                            fontWeight: FontWeight.w400,
                            color: AppColors.mainTextColor,
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      AppLargeText(
                          text: "Посетители",
                          size: 20,
                          color: Colors.black.withOpacity(0.7)),
                      const SizedBox(height: 5),
                      AppText(
                          text: "Выберите кол-во гостей для поездки😜😜",
                          fontWeight: FontWeight.w400,
                          color: AppColors.mainTextColor),
                      const SizedBox(height: 20),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 11),
                                child: AppButton(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                  backgroundColor: selectedIndex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                                  size: 60,
                                  borderColor: selectedIndex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                                  // isIcon: true,
                                  // icon: Icons.cable,
                                  isIcon: false,
                                  text: (index + 1).toString(),
                                ),
                              ));
                        }),
                      ),
                      const SizedBox(height: 20),
                      AppLargeText(
                          text: "Описание",
                          color: Colors.black.withOpacity(0.7),
                          size: 20),
                      const SizedBox(height: 10),
                      AppText(
                          text:detail.place.description,
                          fontWeight: FontWeight.w400,
                          color: AppColors.mainTextColor),
                    ],
                  ),
                )),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButton(
                      color: AppColors.textColor1,
                      backgroundColor: Colors.white,
                      size: 60,
                      borderColor: AppColors.textColor1,
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    const SizedBox(width: 40),
                    ResponsiveButton(
                      isResponsive: true,
                    )
                  ],
                ))
          ],
        ),
      ));
    });
  }
}
