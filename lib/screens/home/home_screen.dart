import 'package:facebook/core/utils/app_colors.dart';
import 'package:facebook/screens/home/widgets/home_screen_appbar.dart';
import 'package:facebook/screens/home/widgets/home_tab_view.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String roputeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: AppColors.white,
        // appBar: const HomeScreenAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [const HomeScreenAppbar()];
          },
          body: TabBarView(
            children: <Widget>[
              const HomeTabView(),
              const Center(child: Text('Reels')),
              const Center(child: Text('Market Place')),
              const Center(child: Text('Frinds')),
              const Center(child: Text('Notifications')),
              const Center(child: Text('Profile')),
            ],
          ),
        ),
      ),
    );
  }
}
