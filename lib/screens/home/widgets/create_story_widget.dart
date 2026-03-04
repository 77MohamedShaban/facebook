import 'package:facebook/core/utils/app_assets.dart';
import 'package:facebook/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CreateStoryWidget extends StatelessWidget {
  const CreateStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124,
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Column(
            spacing: 16,
            crossAxisAlignment: .stretch,
            children: [
              Expanded(flex: 8, child: Image.asset(AppImages.worldCup)),
              Expanded(
                flex: 2,
                child: Text(
                  'Create a\nStory',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.black,
                    fontWeight: .w600,
                  ),
                ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: .stretch,
            children: [
              const Spacer(flex: 8),
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.blue,
                  foregroundColor: AppColors.white,
                  shape: CircleBorder(
                    side: BorderSide(color: AppColors.white, width: 2),
                  ),
                ),
                icon: const Icon(Icons.add_rounded),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ],
      ),
    );
  }
}
