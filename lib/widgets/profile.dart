import 'package:flutter/material.dart';
import 'package:second_task/constants/app_images.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios_new, size: 40, color: Color(0xFF000D35)),
          Text(
            "Favorite",
            style: TextStyle(color: Color(0xFF000D35), fontSize: 25),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              Assets.imagesProfile,
              height: 55,
              width: 55,
            ),
          ),
        ],
      ),
    );
  }
}
