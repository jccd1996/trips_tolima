import 'package:flutter/material.dart';

class ButtonProfile extends StatefulWidget {
  final VoidCallback onPressed;
  final Icon iconImage;
  final double size;

  ButtonProfile(this.iconImage, this.size, @required this.onPressed);

  @override
  State<StatefulWidget> createState() {
    return _ButtonProfile();
  }
}

class _ButtonProfile extends State<ButtonProfile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Ink(
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: widget.iconImage,
            color: Color(0xFF584CD1),
            iconSize: widget.size,
            onPressed: widget.onPressed,
          ),
        ),
      ),
    );
  }
}
