import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String val) onChanged;

  const CustomTextField({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      cursorColor: Colors.white,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      maxLength: 15,
      decoration: InputDecoration(
        isDense: true,
        prefixIcon: const Icon(
          Icons.search_outlined,
          color: Colors.white,
        ),
        filled: true,
        fillColor: const Color(0xff545454),
        focusColor: const Color(0xff545454),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(24),
        ),
        hintText: 'Search',
        hintStyle: const TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
      ),
    );
  }
}
