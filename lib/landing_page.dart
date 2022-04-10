import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    double width = MediaQuery.of(context).size.width;
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
              title: const Text("No item Found"),
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
            if (width > 800) const NavBar(),
            const MainCarousel(),
          ],
        ),
      ),
    );
  }
}
