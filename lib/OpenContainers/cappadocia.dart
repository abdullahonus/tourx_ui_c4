import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:elastic_drawer/elastic_drawer.dart';
import 'package:flutter/material.dart';

class CappadociaPage extends StatefulWidget {
  CappadociaPage({Key? key}) : super(key: key);

  @override
  _CappadociaPageState createState() => _CappadociaPageState();
}

class _CappadociaPageState extends State<CappadociaPage> {
  ContainerTransitionType _containerTransitionType =
      ContainerTransitionType.fade;

  bool ticked = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 5,
                    right: 5,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage(
                                "3.png",
                              ),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15, top: 25),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                    Icons.chevron_left_outlined,
                                    color: Colors.black,
                                    size: 35,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(8),
                                    primary: Colors.white
                                        .withOpacity(0.5), // <-- Button color
                                    /* onPrimary: const Color(0xffFD4416),  */ // <-- Splash color
                                  ),
                                ),
                              ),
                              const Text(
                                "Trip Details",
                                style: TextStyle(
                                    fontFamily: "mont",
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15, top: 25),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      ticked = !ticked;
                                    });

                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      margin: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        bottom: 5,
                                      ),
                                      content: const Text(
                                        'Trip Saved ',
                                        style: TextStyle(
                                            fontFamily: "mont",
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      duration: const Duration(seconds: 1),
                                      backgroundColor: Colors.grey.shade800,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      behavior: SnackBarBehavior.floating,
                                      elevation: 0,
                                    ));
                                  },
                                  child: Icon(
                                    ticked
                                        ? Icons.bookmark_border_outlined
                                        : Icons.bookmark,
                                    color: Colors.black,
                                    size: 35,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(8),
                                    primary: Colors.white
                                        .withOpacity(0.5), // <-- Button color
                                    /* onPrimary: const Color(0xffFD4416),  */ // <-- Splash color
                                  ),
                                ),
                              ),
                            ],
                          ),
                          OpenContainer(
                              transitionType: _containerTransitionType,
                              transitionDuration: const Duration(seconds: 1),
                              openBuilder: (context, _) => ElasticDrawer(
                                    markPosition: 0.9,
                                    mainColor: Colors.transparent,
                                    drawerColor: Colors.black.withOpacity(0.3),
                                    mainChild: Column(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage("4.png"),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    drawerChild: Column(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage("5.png"),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              closedElevation: 0,
                              closedShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(
                                    color: Colors.transparent,
                                  )),
                              closedColor: Colors.white.withOpacity(0.1),
                              closedBuilder: (context, _) => Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(2)),
                                      image: DecorationImage(
                                          image: AssetImage("4.png"),
                                          fit: BoxFit.cover))))
                          /* Container(
                            width: MediaQuery.of(context).size.width * 0.24,
                            height: MediaQuery.of(context).size.height * 0.20,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                                image: DecorationImage(
                                    image: AssetImage("4.png"))),
                          ) */
                          ,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
