import "package:flutter/material.dart";
import "package:travel_app/misc/colors.dart";
import "package:travel_app/widgets/app_large_text.dart";
import "package:travel_app/widgets/app_text.dart";
import "package:travel_app/widgets/responsive_button.dart";

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];

  List title = ["Trips", "Holiday", "Vacation"];
  List subTitle = ["Mountain", "Greece", "Dubai"];
  List texts = [
    "Mountain hikes give you an incredible sense of freedom along with endurance",
    "Greece holiday give you an incredible sense of freedom along with endurance",
    "Dubai Vacation give you an incredible sense of freedom along with endurance"
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
                    image: AssetImage(
                      "img/" + images[index],
                    ),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: title[index]),
                        AppText(text: subTitle[index], size: 30),
                        const SizedBox(height: 20),
                        Container(
                          width: 220,
                          child: AppText(
                            text: texts[index],
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const ResponsiveButton(width: 120)
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
