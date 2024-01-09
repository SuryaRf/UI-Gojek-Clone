import 'package:flutter/material.dart';
import 'package:gojek_clone/constant/color.dart';
import 'package:gojek_clone/constant/text_style.dart';
import 'package:gojek_clone/models/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        backgroundColor: Colors.grey[200],
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount_outlined),
            label: 'Promos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mark_chat_unread_outlined),
            label: 'Chat',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
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
                      child: Stack(
                        children: [
                          Container(
                            height: 62,
                            width: 116,
                            decoration: BoxDecoration(
                              color: whiteGojek,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Positioned(
                              left: 10,
                              child: Image.asset(
                                'assets/icon/gopay.png',
                                height: 30,
                                width: 20,
                              )),
                          Positioned(
                            top: 4,
                            left: 35,
                            child: Text(
                              'gopay',
                              style: smallBold,
                            ),
                          ),
                          Positioned(
                            top: 25,
                            left: 13,
                            child: Text(
                              'Rp9.000.000',
                              style: smallBold,
                            ),
                          ),
                          Positioned(
                            top: 41,
                            left: 13,
                            child: Text(
                              'Tap for history',
                              style: smallBold.copyWith(color: greenGojek),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xffE5F9D4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/icon/goride.png',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'GoRide',
                          style: small,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xffE5F9D4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/icon/gocar.png',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'GoCar',
                          style: small,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xffFAE3E2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/icon/gofood.png',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'GoFood',
                          style: small,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xffE5F9D4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/icon/gosend.png',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'GoSend',
                          style: small,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xffFAE3E2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/icon/gomart.png',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'GoMart',
                          style: small,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xffD8F2F9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/icon/gopulsa.png',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'GoPulsa',
                          style: small,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: whiteGojek,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/icon/goclub.png',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'GoClub',
                          style: small,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xffEDEDED),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Image.asset(
                            'assets/icon/more.png',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'More',
                          style: small,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 358,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xffBBE7F0).withOpacity(0.3),
                      Colors.white
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/icon/bgstar.png'),
                        Positioned(
                          top: 5,
                          left: 5,
                          bottom: 5,
                          child: Image.asset(
                            'assets/icon/star.png',
                            height: 45,
                            width: 45,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 65, top: 12),
                          child: Text(
                            '121 XP to your next treasure',
                            style: smallBold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 65, top: 38),
                          child: SizedBox(
                            width: 240,
                            height: 4,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 240,
                                    height: 4,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFBBBBBB),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 156,
                                    height: 4,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF3B862B),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 325, top: 15),
                          child: Icon(
                            Icons.keyboard_arrow_right_outlined,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 80,
                width: 500,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      child: Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          color: whiteGojek,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: greyGojek.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(0, 0),
                                blurStyle: BlurStyle.normal),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                category[index].title,
                                style: smallBold,
                              ),
                              Image.asset(
                                category[index].imageAsset,
                                height: 20,
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: category.length,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 358,
                height: 181,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/icon/ads.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
