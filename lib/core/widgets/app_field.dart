// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppField extends StatefulWidget {
  final String header;
  final Widget? trailing;
  final String hintText;
  final bool isPassword;
  const AppField({
    super.key,
    required this.header,
    required this.hintText,
    required this.isPassword,
    this.trailing,
  });

  @override
  State<AppField> createState() => _AppFieldState();
}

class _AppFieldState extends State<AppField> {

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Text(
              widget.header,
              style: TextStyle(color: Color(0xFF32343E), fontFamily: "sen"),
            ),
            widget.trailing ?? SizedBox(),
          ],
        ),
        SizedBox(height: 5),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(width: 0, style: BorderStyle.none),
            ),
            filled: true,
            fillColor: Color(0xFFF0F5FA),
            hintText: widget.hintText,
            hintStyle: TextStyle(fontFamily: "sen"),
            suffixIcon: widget.isPassword ? IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(
                  _obscureText
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              )
            : null,
          ),
          obscureText: widget.isPassword ? _obscureText : false,
        ),
      ],
    );
  }
}
