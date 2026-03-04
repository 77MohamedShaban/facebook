import 'package:facebook/core/utils/app_assets.dart';
import 'package:facebook/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124,
      height: 200,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage(AppImages.messi), fit: .cover),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: AppColors.blue,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(AppImages.goat),
            ),
          ),
        ],
      ),
    );
  }
}
