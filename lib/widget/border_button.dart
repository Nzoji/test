import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {

  final String buttonText;
  final double height;
  final double width;
  final VoidCallback onTap;
  final Color buttonColor;

  BorderButton(this.buttonText, this.height, this.onTap, {this.width, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width == null ? double.infinity : width,
        child: Text(buttonText, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.white)),
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border(
            top: BorderSide(color: Colors.white, width: 1.5, style: BorderStyle.solid),
            bottom:  BorderSide(color: Colors.white, width: 1.5, style: BorderStyle.solid),
            right:  BorderSide(color: Colors.white, width: 1.5, style: BorderStyle.solid),
            left:  BorderSide(color: Colors.white, width: 1.5, style: BorderStyle.solid),
            ),
          borderRadius: new BorderRadius.circular(10.0),
          ),
        ),
      );
  }
}
