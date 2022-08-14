import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/CurvedNavBar/stepper.dart';
import 'package:my_app/category.dart';
import 'package:my_app/jobs.dart';

const Categories = [
  {'title': '1.png', 'text': 'Cagalar'},
  {'title': '2.2.png', 'text': 'Garrylar'},
  {'title': '3.1.png', 'text': 'Oy hyzmaty'},
  {'title': '1.png', 'text': 'Cagalar'}
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(23, 129, 197, 0.7),
        elevation: 0,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          child: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("asset/banner1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 65),
                              child: Container(
                                width: 125,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 7),
                                  child: Text(
                                    'Hemayatkar rahatlyga tarap acar',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 140,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 7),
                                  child: Text(
                                    'Sizin tutus masgalanyz ucin',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                width: constraints.maxHeight,
                color: Colors.grey.shade200,
                height: 400,
                //color: Colors.black,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: InkWell(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoryPage()));
                          setState(() {});
                        }),
                        child: Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            children: Categories.map((category) => Container(
                                width: 160,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "../asset/${category['title']}",
                                      height: 160,
                                      width: 140,
                                      fit: BoxFit.contain,
                                    ),
                                    Text('${category["text"]}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                  ],
                                ))).toList(),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => JobsPage()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: SvgPicture.asset(
                                    "asset/baby.svg",
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => JobsPage()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30, left: 30),
                                  child: SvgPicture.asset("asset/garry.svg",
                                      height: 80, width: 80),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => JobsPage()));
                                },
                                child: SvgPicture.asset("asset/home.svg",
                                    height: 80, width: 80),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 15, bottom: 10),
                                child: Text(
                                  "Ish Gornusleri",
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 80, top: 15),
                                child: Text('Ahlisini gor',
                                    style: TextStyle(color: Colors.red)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
