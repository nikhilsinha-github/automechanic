import 'package:flutter/material.dart';

class CustomIcontextButton extends StatefulWidget {
  final Color btnBorderColor;
  final VoidCallback? callback;
  final IconData icon;
  final Color? iconColor;
  final String text;
  final Color? textColor;
  const CustomIcontextButton({
    Key? key,
    required this.btnBorderColor,
    this.callback,
    required this.icon,
    this.iconColor,
    required this.text,
    this.textColor,
  }) : super(key: key);

  @override
  _CustomIcontextButtonState createState() => _CustomIcontextButtonState();
}

class _CustomIcontextButtonState extends State<CustomIcontextButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.callback,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.btnBorderColor,
          ),
        ),
        child: MaterialButton(
          onPressed: widget.callback,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                widget.icon,
                color: widget.iconColor,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  color: widget.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
