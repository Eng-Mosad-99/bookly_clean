import 'package:flutter/material.dart';

class CustomSearchTextFormField extends StatelessWidget {
  const CustomSearchTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
