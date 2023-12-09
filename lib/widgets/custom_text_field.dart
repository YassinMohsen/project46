import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText, this.icon});
  String? hintText;
  IconData? icon; // New parameter for the icon

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3, // Set elevation for the 3D effect
      borderRadius: BorderRadius.circular(10.0), // Set border radius
      child: TextField(
        style: TextStyle(color: Colors.black), // Set text color
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16.0), // Add padding inside the TextField
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none, // Remove border
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none, // Remove border
          ),
          prefixIcon: icon != null // Check if an icon is provided
              ? Icon(
                  icon,
                color: Color(0xFF7939FF),
                )
              : null, // Set prefixIcon to null if no icon is provided
        ),
      ),
    );
  }
}