import 'package:basics/ui/home/widgets/appbar_facebook.dart';
import 'package:basics/ui/home/widgets/create_post_item.dart';
import 'package:basics/ui/home/widgets/post_item.dart';
import 'package:basics/model/post_model.dart';
import 'package:basics/ui/home/widgets/stories_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";
  List<PostModel> posts = [];

  HomeScreen() {
    for (int i = 1; i <= 10; i++) {
      posts.add(
        PostModel(
          profileName: "User $i",
          profileImage: "assets/images/user_$i.jpg",
          postImage: "assets/images/story_image_$i.jpg",
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBarFacebook(),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              print("index = $index");
              return Column(
                children: [
                  CreatePostItem(),
                  Divider(height: 12, thickness: 2, color: Color(0xFF898F9C)),
                  StoriesItem(),
                  Divider(height: 12, thickness: 2, color: Color(0xFF898F9C)),
                  PostItem(
                    profileName: "${posts[index].profileName}",
                    profileImage: "${posts[index].profileImage}",
                    postImage: "${posts[index].postImage}",
                  ),
                ],
              );
            } else {
              print("index_Post = $index");
              return PostItem(
                profileName: "${posts[index].profileName}",
                profileImage: "${posts[index].profileImage}",
                postImage: "${posts[index].postImage}",
              );
            }
          },
        ),
      ),
    );
  }
}
