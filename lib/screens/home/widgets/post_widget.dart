import 'package:facebook/core/utils/app_assets.dart';
import 'package:facebook/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: const Row(
            spacing: 8,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(AppImages.rouetLogo),
                radius: 24,
              ),
              Column(
                spacing: 4,
                children: [
                  Text(
                    'Route',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w500,
                      color: AppColors.black,
                    ),
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      Text(
                        '8h',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: .w500,
                          color: AppColors.grey,
                        ),
                      ),
                      Icon(Icons.public, color: AppColors.grey, size: 16),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.more_horiz, color: AppColors.black),
            ],
          ),
        ),
        Image.asset(AppImages.postImage),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            spacing: 8,
            children: [
              Image.asset(AppIcons.like, width: 24),
              Image.asset(AppIcons.comment, width: 24),
              Image.asset(AppIcons.share, width: 24),
              const Spacer(),
              Image.asset(AppIcons.save, width: 24),
            ],
          ),
        ),
      ],
    );
  }
}
