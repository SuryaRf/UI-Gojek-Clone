import 'package:flutter/material.dart';
import 'package:gojek_clone/constant/color.dart';
import 'package:gojek_clone/constant/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteGojek,
                ),
                child: Image.asset('assets/icon/Frame.png')),
          )
        ],
        backgroundColor: greenGojek,
        title: Row(
          children: [
            Container(
              height: 30,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteGojek,
                boxShadow: [
                  BoxShadow(
                      color: greyGojek,
                      blurRadius: 2,
                      offset: const Offset(1, 1)),
                ],
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(
                      Icons.search_outlined,
                      size: 24,
                    ),
                  ),
                  Text('Find Services, food or placess',
                      style: small.copyWith(fontWeight: FontWeight.w200)),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 20, left: 15),
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    width: 360,
                    decoration: BoxDecoration(
                      color: blueGojek,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 12,
                    child: Column(
                      children: [
                        Container(
                          height: 10,
                          width: 4,
                          decoration: BoxDecoration(
                            color: greyScrollGojek,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 10,
                          width: 4,
                          decoration: BoxDecoration(
                            color: greyScrollGojek,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 10,
                          width: 4,
                          decoration: BoxDecoration(
                            color: whiteGojek,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 23,
                    left: 170,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2, right: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/icon/plus.png',
                                height: 30,
                                width: 30,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Top Up',
                                style: smallBold.copyWith(color: whiteGojek),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/icon/up.png',
                                height: 30,
                                width: 30,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Pay',
                                style: smallBold.copyWith(color: whiteGojek),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/icon/rocket.png',
                              height: 30,
                              width: 30,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Explore',
                              style: smallBold.copyWith(color: whiteGojek),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 29,
                    top: 14,
                    child: Container(
                      height: 62,
                      width: 116,
                      decoration: BoxDecoration(
                          color: whiteGojek,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
