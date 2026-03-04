import 'package:facebook/core/utils/app_colors.dart';
import 'package:facebook/screens/home/widgets/create_story_widget.dart';
import 'package:facebook/screens/home/widgets/post_widget.dart';
import 'package:facebook/screens/home/widgets/story_widget.dart';
import 'package:facebook/screens/home/widgets/what_in_your_mind.dart';
import 'package:flutter/material.dart';

class HomeTabView extends StatelessWidget {
  const HomeTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: WhatInYourMind()),
        const SliverToBoxAdapter(
          child: Divider(height: 1, color: AppColors.grey, thickness: 1.5),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 210,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) {
                if (index == 0) return const CreateStoryWidget();
                return const StoryWidget();
              },
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemCount: 10,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Divider(height: 1, color: AppColors.grey, thickness: 1.5),
        ),
        SliverList.separated(
          itemBuilder: (context, index) => const PostWidget(),
          separatorBuilder: (context, index) {
            return const Divider(
              height: 1,
              color: AppColors.grey,
              thickness: 1.5,
            );
          },
          itemCount: 10,
        ),
      ],
    );
  }
}
