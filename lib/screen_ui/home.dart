import 'package:flutter/material.dart';

import '../utlis/localization.dart/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: homeWidget(),
    );
  }

  Widget homeWidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: 54,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color.fromARGB(255, 226, 223, 223)),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.search),
                      Expanded(
                        child: Center(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: strSearch,
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.format_align_right_sharp)
              ],
            ),
            location(),
            shops(),
            bestChoice(),
          ],
        ),
      ),
    );
  }
}

Widget location() {
  return Padding(
    padding: const EdgeInsets.only(top: 30),
    child: ExpansionTile(
      // tilePadding: const EdgeInsets.all(2.0),
      title: Text(strLocation, style: const TextStyle(color: Colors.green)),
      leading: const Icon(
        Icons.add_location_rounded,
        color: Colors.green,
      ),
      trailing: const Icon(Icons.arrow_downward, color: Colors.green),
    ),
  );
}

Widget shops() {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: SizedBox(
      // padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                strShops,
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "See All",
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 170,
            width: 700,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeItem(
                  image:
                      "https://www.worldcoffeeportal.com/getattachment/25e2c747-d792-4a6d-84b4-37d085bdfdf6/McDonalds-Dengshikou-Beijing-2-(1).jpg.aspx?lang=en-GB&width=700&height=466",
                  title: "Mac Donalds",
                ),
                makeItem(
                    image:
                        "https://content.internetretailing.net/AcuCustom/Sitename/DAM/039/Dominos_store_front_03.jpg",
                    title: "Daminos"),
                makeItem(
                    image: "https://wallpapercave.com/wp/wp1929494.jpg",
                    title: 'Burger King'),
                makeItem(
                    image:
                        "https://ntbrand-wp.s3.amazonaws.com/livent/wp-content/uploads/2018/08/13155151/SearchFX2_5b229dafac40a9f608232bc8-e1534189919644.jpeg",
                    title: "Rolls King"),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget bestChoice() {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: SizedBox(
      // padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                strBestchoice,
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "See All",
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 170,
            width: 700,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeItem(
                    image: "https://wallpapercave.com/wp/wp1929358.jpg",
                    title: "Berger"),
                makeItem(
                    image: "https://wallpapercave.com/wp/wp1929455.jpg",
                    title: "Hot Dogs"),
                makeItem(
                    image: "https://wallpapercave.com/wp/wp1929494.jpg",
                    title: 'French Fries'),
                makeItem(
                    image:
                        "https://ntbrand-wp.s3.amazonaws.com/livent/wp-content/uploads/2018/08/13155151/SearchFX2_5b229dafac40a9f608232bc8-e1534189919644.jpeg",
                    title: "Ice creams"),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget makeItem({image, title}) {
  return AspectRatio(
    aspectRatio: 1 / 1,
    child: Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image:
              DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              const Color.fromARGB(255, 90, 86, 86).withOpacity(0.5),
              const Color.fromARGB(31, 87, 79, 79).withOpacity(0.2)
            ])),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
      ),
    ),
  );
}
