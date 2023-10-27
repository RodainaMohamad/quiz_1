import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class news extends StatefulWidget
{
  @override
  State<news> createState() => _NewsPageState();
}

class _NewsPageState extends State<news> {
  int currentIndex=0;
  List<Widget> images =
  [
    Image.asset("lib/images/woman1.png"),
    Image.asset("lib/images/woman2.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/images/flower.png"),
            const Text("Alice Care", style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)
          ],
        ),
      ),
      bottomNavigationBar:defaultBottomNavigation(),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Arcticles  , Video  , Audio and more ....",
                labelStyle: TextStyle(fontSize: 18),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Chip(label: Text("Discover", style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),)),
                ),
                Expanded(
                  child: Chip(label: Text("News", style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),)),
                ),
                Expanded(
                  child: Chip(label: Text("Most Viewed", style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),)),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hot Topics", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text("See all  >")
              ],
            ),
            const SizedBox(height: 20),
            carousal(),
            const SizedBox(height: 5),
            Expanded(
              child: Container(
                color: const Color(0xffEAECF5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("lib/images/Doctor-PNG-Images 1.png"),
                    const Column(
                      children: [
                        Text("Connect with doctor & \n get suggestionns",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                        SizedBox(height: 10),
                        Text("Connect now and get \n expert insights"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height:10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Cycles phases and period", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text("See all  >")
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget carousal()
  {
    return  CarouselSlider(items: images,
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16/9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        onPageChanged: (index, reason) {
          setState(() {
            currentIndex = index;
          });
        },
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
  Widget defaultBottomNavigation()
  {
    return BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Colors.blueAccent),
        currentIndex: currentIndex,
        onTap: (index)
        {
          index= currentIndex;
          setState(() {});
        },
        items:const [
          BottomNavigationBarItem(icon:Icon(Icons.backpack_rounded),label: "" ),
          BottomNavigationBarItem(icon:Icon(Icons.grid_view_outlined,color: Colors.deepPurple),label: "" ),
          BottomNavigationBarItem(icon:Icon(Icons.chat_bubble_outline_outlined,color: Colors.black),label: "" ),
        ]
    );
  }
}