import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  PasswordField({this.hintText, this.icon});
  final String? hintText;
  final IconData? icon; // New parameter for the icon

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3, // Set elevation for the 3D effect
      borderRadius: BorderRadius.circular(10.0), // Set border radius
      child: TextField(
        obscureText: isObscured,
        style: TextStyle(color: Colors.black), // Set text color
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16.0), // Add padding inside the TextField
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.black),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none, // Remove border
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none, // Remove border
          ),
          prefixIcon: widget.icon != null // Check if an icon is provided
              ? Icon(
                  widget.icon,
                  color: Color(0xFF7939FF),
                )
              : null, // Set prefixIcon to null if no icon is provided
          suffixIcon: widget.icon == Icons.lock
              ? IconButton(
                  icon: Icon(
                    isObscured ? Icons.visibility : Icons.visibility_off,
                    color: Color(0xFF7939FF),
                  ),
                  onPressed: () {
                    setState(() {
                      isObscured = !isObscured;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
