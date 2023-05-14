import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_buttons.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DetailScreenState();
  }
}

class _DetailScreenState extends State<DetailScreen> {
  int starred = 4;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/mountain.jpeg'),
                      fit: BoxFit.cover),
                ),
              )),
          Positioned(
              width: 380,
              left: 20,
              top: 50,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    color: Colors.white,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                    color: Colors.white,
                  )
                ],
              )),
          Positioned(
              top: 300,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                height: 550,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                            text: "Yosemite",
                            color: Colors.black.withOpacity(0.8)),
                        AppLargeText(
                            text: "\$ 240", color: AppColors.mainColor),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        const SizedBox(width: 5),
                        AppText(
                          text: "USA, California",
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
                                color: index < starred
                                    ? AppColors.starColor
                                    : AppColors.textColor2);
                          }),
                        ),
                        const SizedBox(width: 10),
                        AppText(text: "(4.5)", color: AppColors.textColor2),
                      ],
                    ),
                    const SizedBox(height: 25),
                    AppLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20),
                    const SizedBox(height: 5),
                    AppText(
                        text: "Number of people in your group.",
                        color: AppColors.mainTextColor),
                    const SizedBox(height: 10),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: (){
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                                color: selectedIndex == index ? Colors.white : Colors.black,
                                backgroundColor: selectedIndex == index ? Colors.black : AppColors.buttonBackground,
                                size: 50,
                                borderColor: selectedIndex == index ? Colors.black : AppColors.buttonBackground,
                                text: (index+1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
