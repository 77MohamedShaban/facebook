import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  String profileImage;
  String storyImage;

  StoryItem({required this.profileImage, required this.storyImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        width: 100,
        height: 180,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.asset(storyImage, height: double.infinity, fit: BoxFit.cover),
            Container(
              margin: EdgeInsets.only(top: 5, left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Color(0xFF1877F2)),
              ),
              child: CircleAvatar(backgroundImage: AssetImage(profileImage)),
            ),
          ],
        ),
      ),
    );
  }
}
