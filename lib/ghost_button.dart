import 'package:flutter/material.dart';

class GhostButton extends StatefulWidget {
  const GhostButton({
    Key? key,
    required this.textContent,
  }) : super(key: key);

  final String textContent;

  @override
  State<GhostButton> createState() => _GhostButtonState();
}

class _GhostButtonState extends State<GhostButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onHover: (bool isHov) {
        setState(() {
          isHovered = isHov;
        });
      },
      onPressed: () {},
      child: Text(widget.textContent),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(20),
        side: const BorderSide(color: Colors.white, width: 2),
        backgroundColor: isHovered ? Colors.orange : null,
      ),
    );
  }
}
