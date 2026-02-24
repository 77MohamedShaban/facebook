import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarFacebook extends StatelessWidget implements PreferredSizeWidget {
  const AppBarFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        "Facebook",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w800,
          color: Color(0xFF1877F2),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.circlePlus,
            size: 25,
            color: Color(0xFF242527),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 25,
            color: Color(0xFF242527),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.facebookMessenger,
            size: 25,
            color: Color(0xFF242527),
          ),
        ),
      ],
      bottom: TabBar(
        overlayColor: MaterialStateProperty.all(Color(0x381877F2)),
        dividerColor: Color(0xFF898F9C),
        // لون الخط بتاع الtabBar
        labelColor: Color(0xFF1877F2),
        //لون الايقون عند ال selected
        unselectedLabelColor: Color(0xFF898F9C),
        //لون الايقون عند ال unselected
        indicatorColor: Color(0xFF1877F2),
        //لون الخط اللي تحت الايقون
        tabs: [
          Tab(icon: Icon(Icons.home_filled, size: 30)),
          Tab(icon: Icon(Icons.ondemand_video_rounded, size: 30)),
          Tab(icon: Icon(Icons.storefront, size: 30)),
          Tab(icon: Icon(Icons.account_circle_outlined, size: 30)),
          Tab(icon: Icon(Icons.notifications_none_outlined, size: 30)),
          Tab(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/mohamed_shaban.jpeg"),
              radius: 14,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 50);
}
