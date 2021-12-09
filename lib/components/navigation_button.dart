import 'package:flutter/material.dart';

class NavigationButton extends StatefulWidget {
  NavigationButton({
    required this.margin,
    required this.background,
    required this.label,
    required this.onPressed,
  });

  EdgeInsets margin;
  Color background;
  String label;
  Function() onPressed;

  _NavigationButtonState createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.0,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: widget.background,
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: widget.margin,
        child: TextButton(
          onPressed: widget.onPressed,
          child: Center(
            child: Text(
              widget.label,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
