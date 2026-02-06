
import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: "Search for food",
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        prefixIcon: Icon(Icons.search, color: Colors.red),
        fillColor: Colors.red.withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
