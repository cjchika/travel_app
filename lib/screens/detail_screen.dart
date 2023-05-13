import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DetailScreenState();
  }
}

class _DetailScreenState extends State<DetailScreen> {
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
                height: 550,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
