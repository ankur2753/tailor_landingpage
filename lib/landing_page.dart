import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tailor_landingpage/ghost_button.dart';
import 'package:tailor_landingpage/main_carousel.dart';
import './nav_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 1300;
    const cardHeader = TextStyle(color: Colors.orange, fontSize: 40);
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.orange),
              child: Center(
                child: Text(
                  "Total : Rs 0.0",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            ListTile(
              title: const Text("No item Found in Cart"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (isScreenWide) const NavBar(),
            const MainCarousel(),
            customizeCards(isScreenWide, cardHeader),
            DiscoverSection(isScreenWide: isScreenWide)
          ],
        ),
      ),
    );
  }

  Flex customizeCards(bool isScreenWide, TextStyle cardHeader) {
    return Flex(
      direction: isScreenWide ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 18.0,
                horizontal: 48.0,
              ),
              child: Column(
                children: [
                  Text(
                    "MEN",
                    style: cardHeader,
                  ),
                  const Text("CUSTOMIZE CLOTHES"),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text("More Info"),
                    icon: const Icon(Icons.navigate_next),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 18.0,
                horizontal: 48.0,
              ),
              child: Column(
                children: [
                  Text(
                    "WOMEN",
                    style: cardHeader,
                  ),
                  const Text("CUSTOMIZE CLOTHES"),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text("More Info"),
                    icon: const Icon(Icons.navigate_next),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 18.0,
                horizontal: 48.0,
              ),
              child: Column(
                children: [
                  Text(
                    "KIDS",
                    style: cardHeader,
                  ),
                  const Text("CUSTOMIZE CLOTHES"),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text("More Info"),
                    icon: const Icon(Icons.navigate_next),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DiscoverSection extends StatelessWidget {
  final CarouselController buttonCarouselController = CarouselController();
  DiscoverSection({
    Key? key,
    required this.isScreenWide,
  }) : super(key: key);

  final bool isScreenWide;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isScreenWide ? 1000 : 900,
      width: isScreenWide ? 1000 : double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('fabric3.jpg'))),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Discover  Fabric Collection",
            style: TextStyle(color: Colors.white, fontSize: 70),
          ),
          const Text(
            "Proin ullamcorper pretium orci donec nec scelerisque leo nam massa\n dolor imperdiet nec consequata congue idsem.",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: Divider(
              height: 20,
              thickness: 2,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const GhostButton(textContent: "Shop Now"),
          CarouselSlider(
            items: [0, 1, 2].map((i) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('fabric$i.jpg'))),
                );
              });
            }).toList(),
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              initialPage: 2,
            ),
          ),
        ],
      ),
    );
  }
}
