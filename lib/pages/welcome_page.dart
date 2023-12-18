import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';

import '../widgets/app_text.dart';
import '../widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-one.png", "welcome-two.png", "welcome-three.png"];
  List heading = ["Поход к вершинам",
                  "Ощутите величие гор",
                  "Прекрасные виды гарантированы"
                 ];

  List description = ["Горные велосипеды подарят вам невероятное чувство свободы наряду с испытаниями на выносливость",
                      "Свобода, выносливость, незабываемые моменты ждут вас.",
                      "Покорите горные вершины и смотрите на горные пейзажи, исследуйте непроходимые тропы и наслаждайтесь свободой на каждом повороте с нашим горным велосипедом"
                     ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/" + images[index]),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: "Поход"),
                          AppText(text: "К вершинам", size: 30,fontWeight: FontWeight.w400,),
                        SizedBox(height: 20,),
                        Container(
                          width: 250,
                          child: AppText(
                            text: description[index],
                            color: AppColors.textColor2,
                            size: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 30,),
                        ResponsiveButton(width: 120,)
                        ],
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
