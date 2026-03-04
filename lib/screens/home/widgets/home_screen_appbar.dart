import 'package:facebook/core/utils/app_assets.dart';
import 'package:facebook/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      pinned: true,
      backgroundColor: AppColors.white,
      title: Text(
        'Facebook',
        style: TextStyle(
          fontSize: 32,
          fontWeight: .w800,
          color: AppColors.blue,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(AppIcons.add, width: 26),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(AppIcons.search, width: 24),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(AppIcons.messenger, width: 24),
        ),
      ],
      bottom: TabBar(
        indicatorColor: AppColors.blue,
        labelColor: AppColors.blue,
        unselectedLabelColor: AppColors.grey,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: <Widget>[
          Tab(icon: ImageIcon(AssetImage(AppIcons.home))),
          Tab(icon: ImageIcon(AssetImage(AppIcons.reels))),
          Tab(icon: ImageIcon(AssetImage(AppIcons.market))),
          Tab(icon: ImageIcon(AssetImage(AppIcons.profile))),
          Tab(icon: ImageIcon(AssetImage(AppIcons.notifications))),
          Tab(
            icon: CircleAvatar(backgroundImage: AssetImage(AppImages.profilePicture)),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(96);
}
