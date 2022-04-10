import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<bool> mouseOn = [false, false, false, false, false, false];
  String selectedVal = 'MEN';
  @override
  Widget build(BuildContext context) {
    const textStyle =
        TextStyle(color: Colors.white, decoration: TextDecoration.underline);
    return PreferredSize(
      preferredSize: const Size(double.infinity, 90),
      child: Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('tailor_logo.jpg', height: 80),
            DropdownButton(
                value: selectedVal,
                style: const TextStyle(color: Colors.orange),
                items: const [
                  DropdownMenuItem<String>(
                    child: Text("MEN"),
                    value: "MEN",
                  ),
                  DropdownMenuItem<String>(
                    child: Text("WOMEN"),
                    value: "WOMEN",
                  ),
                ],
                onChanged: (String? changed) {
                  setState(() {
                    selectedVal = changed!;
                  });
                }),
            TextButton(
                onHover: (bool isHovering) {
                  setState(() {
                    mouseOn[1] = isHovering;
                  });
                },
                onPressed: () {},
                child: Text(
                  "About us",
                  style: mouseOn[1] ? textStyle : null,
                )),
            TextButton(
                onHover: (bool isHovering) {
                  setState(() {
                    mouseOn[2] = isHovering;
                  });
                },
                onPressed: () {},
                child: Text(
                  "How it Works",
                  style: mouseOn[2] ? textStyle : null,
                )),
            TextButton(
                onHover: (bool isHovering) {
                  setState(() {
                    mouseOn[3] = isHovering;
                  });
                },
                onPressed: () {},
                child: Text(
                  "Contact Us",
                  style: mouseOn[3] ? textStyle : null,
                )),
            TextButton(
                onHover: (bool isHovering) {
                  setState(() {
                    mouseOn[4] = isHovering;
                  });
                },
                onPressed: () {},
                child: Text(
                  "SignUp / SignIn",
                  style: mouseOn[4] ? textStyle : null,
                )),
            TextButton.icon(
              onHover: (bool isHovering) {
                setState(() {
                  mouseOn[5] = isHovering;
                });
              },
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const FaIcon(FontAwesomeIcons.bagShopping),
              label: Text(
                "Cart",
                style: mouseOn[5] ? textStyle : null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
