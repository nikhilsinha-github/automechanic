import 'package:flutter/material.dart';

class CustomMaterialButton extends StatefulWidget {
  final VoidCallback? callback;
  final Color? btnColor;
  final double radius;
  final double verticalPadding;
  final String text;
  final Color? textColor;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  const CustomMaterialButton(
      {Key? key,
      this.callback,
      this.btnColor,
      required this.radius,
      required this.verticalPadding,
      required this.text,
      this.textColor,
      this.fontFamily,
      this.fontSize,
      this.fontWeight})
      : super(key: key);

  @override
  _CustomMaterialButtonState createState() => _CustomMaterialButtonState();
}

class _CustomMaterialButtonState extends State<CustomMaterialButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: widget.btnColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(widget.radius),
      ),
      onPressed: widget.callback,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: widget.verticalPadding,
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: widget.textColor,
            fontFamily: widget.fontFamily,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
          ),
        ),
      ),
    );
  }
}
