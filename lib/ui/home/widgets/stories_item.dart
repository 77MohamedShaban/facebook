import 'package:basics/model/story_model.dart';
import 'package:basics/ui/home/widgets/story_item.dart';
import 'package:flutter/material.dart';
import 'create_story_item.dart';

class StoriesItem extends StatelessWidget {
  List<StoryModel> stories = [];
   StoriesItem(){
     for (int i = 1; i <= 10; i++) {
       stories.add(StoryModel(profileImage: "assets/images/user_$i.jpg",
           storyImage: "assets/images/story_image_$i.jpg"));
     }
   }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, top: 10,bottom:10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(margin:EdgeInsets.only(right: 12) ,child: CreateStorytItem()),
          Expanded(
            child: SizedBox(height: 180,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => StoryItem(profileImage:"${stories[index].profileImage}" ,storyImage:"${stories[index].storyImage}" ,),
                itemCount: stories.length, separatorBuilder: (context, index)=> SizedBox(width: 12,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
