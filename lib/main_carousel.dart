import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainCarousel extends StatefulWidget {
  const MainCarousel({
    Key? key,
  }) : super(key: key);

  @override
  State<MainCarousel> createState() => _MainCarouselState();
}

class _MainCarouselState extends State<MainCarousel> {
  bool ctaHover = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('sewing-unsplash.jpg'),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextStyle(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 70,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("BEST"),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          FadeAnimatedText(' TAILORING'),
                          FadeAnimatedText(' FABRIC'),
                          FadeAnimatedText(' FIT'),
                        ],
                        displayFullTextOnTap: true,
                      ),
                    ],
                  ),
                  const Text("At Your Doorstep")
                ],
              ),
            ),
            const Text(
              "Proin ullamcorper pretium orci. Donec nec scelerisque imperdiet nec congue id sem. Maecenas\n malesuada faucibus finibus vestibulum ante vitae ullamcorper.",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Transform.scale(
              scale: ctaHover ? 1.1 : 1,
              child: ElevatedButton(
                onHover: (bool isHovering) {
                  setState(() {
                    ctaHover = isHovering;
                  });
                },
                onPressed: () {},
                child: const Text("BOOK AN APPOINTMENT"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  side: const BorderSide(color: Colors.white, width: 2),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const FaIcon(
                FontAwesomeIcons.play,
                color: Colors.white,
              ),
            ),
            Text(
              "How It Works",
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
      ),
    );
  }
}
