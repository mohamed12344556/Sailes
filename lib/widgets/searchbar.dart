import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFC8DBF6), width: 3.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.search,
            size: 40,
          ),
          Center(
            child: Text(
              "What are you looking for ?",
              style: TextStyle(color: Color(0xFF90929F), fontSize: 18),
            ),
          ),
          Icon(
            Icons.menu_open,
            size: 40,
          ),
        ],
      ),
    );
  }
}
