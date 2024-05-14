import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFD9D9D9),
          labelText: 'Search',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          suffixIcon: const Icon(
            Icons.search,
            color: Color(0xFF8F00FF),
          ),
        ),
      ),
    );
  }
}
